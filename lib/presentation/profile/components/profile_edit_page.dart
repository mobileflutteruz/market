import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/config/di/injection.dart';

import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';

import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/name_input.dart';
import 'package:karmango/presentation/profile/components/input_phone.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../components/bottom_sheet_header.dart';
import '../../components/buildable.dart';
import '../../components/common_app_bar.dart';
import '../../components/input.dart';
import '../../components/phone_input.dart';
import '../cubit/food_profile_cubit.dart';

class FoodProfileEditPage extends StatefulWidget {
  const FoodProfileEditPage({super.key});

  @override
  State<FoodProfileEditPage> createState() => _FoodProfileEditPageState();
}

class _FoodProfileEditPageState extends State<FoodProfileEditPage> {
  TextEditingController? surnameController = TextEditingController();
  TextEditingController? nameController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  String? imagePath;

  File? userFileImage;
  Map<String, IconData> pickImageItems = {
    "Suratga oling": CupertinoIcons.camera,
    "Galareyadan tanlash": CupertinoIcons.photo,
    "Joriy suratni o’chirish": CupertinoIcons.delete,
  };

  _imgFromGallery() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      imagePath = image!.path;
      userFileImage = File(image.path);
    });

    // _apiChangePhoto();
  }

  _imgFromCamera() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      imagePath = image!.path;
      userFileImage = File(image.path);
    });
  }

  final formKey = GlobalKey<FormState>();

  void _showPicker(context, String title) {
    showModalBottomSheet(
        backgroundColor: FoodColors.cffffff,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            padding: AppUtils.kPaddingHorizontal16,
            decoration: BoxDecoration(
              borderRadius: AppUtils.kBorderRadiusVerTop20,
              color: FoodColors.cffffff,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomSheetHeader(
                  title: title,
                  isExitButton: false,
                ),
                AppUtils.kGap24,
                ...List.generate(
                  pickImageItems.length,
                  (index) => index == 2
                      ? ItemButtonWidget(
                          text: pickImageItems.keys.toList()[index],
                          iconData: pickImageItems.values.toList()[index],
                          isRed: true,
                          onTap: () {
                            setState(() {
                              imagePath = "";
                              Navigator.of(context).pop();
                            });
                          },
                        )
                      : Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ItemButtonWidget(
                            text: pickImageItems.keys.toList()[index],
                            iconData: pickImageItems.values.toList()[index],
                            onTap: () {
                              index == 0 ? _imgFromCamera() : _imgFromGallery();
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                ),
                AppUtils.kGap24,
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Buildable<FoodProfileCubit, FoodProfileState,
            FoodProfileBuildableState>(
        properties: (buildable) => [buildable.profileUser],
        builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: context.l10n.editProfile,
              backOnTap: () {
                Navigator.pop(context);
              },
            ),
            body: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //#myphoto
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _showPicker(context,
                                            context.l10n.changeProfilePicture);
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 80,
                                            alignment: Alignment.center,
                                            decoration: ShapeDecoration(
                                              shape: const OvalBorder(),
                                              color: FoodColors.cF5F5F5,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              child: imagePath == null
                                                  ? Image.asset(
                                                      ImageConstants.person,
                                                      width: 36,
                                                      height: 36,
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Image.file(
                                                      userFileImage!,
                                                      fit: BoxFit.cover,
                                                      height: 80,
                                                      width: 80,
                                                    ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80,
                                            height: 80,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  CupertinoIcons
                                                      .plus_circle_fill,
                                                  color:
                                                      FoodColors.primaryColor,
                                                  size: 24,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AppUtils.kGap16,
                                    Text(
                                      context.l10n.personalInformation,
                                      textAlign: TextAlign.center,
                                      style: Styles.manropeSemiBold16
                                          .copyWith(color: FoodColors.c0E1923),
                                    ),
                                  ],
                                ),
                              ),
                              AppUtils.kGap32,

                              Text(
                                context.l10n.surname,
                                style: Styles.manropeMedium14
                                    .copyWith(color: FoodColors.c0E1923),
                              ),
                              AppUtils.kGap8,
                              InputWidget(
                                keyboardType: TextInputType.text,
                                textEditingController: surnameController,
                                hintText: context.l10n.surname,
                              ),
                              AppUtils.kGap20,
                              Text(
                                context.l10n.name,
                                style: Styles.manropeMedium14
                                    .copyWith(color: FoodColors.c0E1923),
                              ),
                              AppUtils.kGap8,
                              // NameInputWidget(

                              //   hintText:
                              //       context.l10n.name,
                              //   // textEditingController:
                              //   //     context.read<RegisterCubit>().nameController,
                              //   textEditingController: nameController,
                              //   validator: (p0) =>
                              //       locator<AuthRepository>().nameValidator(p0!),
                              // ),
                              InputWidget(
                                  keyboardType: TextInputType.text,
                                  textEditingController: nameController,
                                  hintText: context.l10n.name),
                              AppUtils.kGap20,
                              Text(
                                context.l10n.phoneNumber,
                                style: Styles.manropeMedium14
                                    .copyWith(color: FoodColors.c0E1923),
                              ),
                              AppUtils.kGap8,
                              InputPhone(
                                // isRequired: false,
                                keyboardType: TextInputType.number,
                                textEditingController: phoneController!,
                                hintText: context.l10n.enterPhoneNumber,
                                validator: (value) {
                                  return locator<AuthRepository>()
                                      .phoneValidator(value!);
                                },
                              ),
                            ],
                          ),
                          SafeArea(
                            child: CommonFoodButtonWidget(
                              title: context.l10n.save,
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  // context.read<RegisterCubit>().register();
                                  // Navigator.pushNamed(
                                  //   context,
                                  //   FoodNavigatorConst.foodOtpScreen,
                                  //   arguments: phoneController.text,
                                  // );
                                }
                                final UserModel profileUser = UserModel(
                                  name: surnameController?.text == ""
                                      ? null
                                      : surnameController?.text,
                                  phoneNumber: phoneController?.text == ""
                                      ? null
                                      : phoneController!.text,
                                  image: imagePath,
                                );
                                foodUser = profileUser;
                                context
                                    .read<FoodProfileCubit>()
                                    .foodSetUser(profileUser);

                                // Navigator.pop(context, profileUser);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          );
        });
  }
}

class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget({
    super.key,
    this.onTap,
    required this.text,
    required this.iconData,
    this.isRed = false,
  });

  final void Function()? onTap;
  final String text;
  final IconData iconData;
  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: AppUtils.kPaddingHorizontal16,
        decoration: ShapeDecoration(
          color: ColorConstants.cF7F7F7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: isRed ? const Color(0xFFD71B30) : null,
            ),
            AppUtils.kGap12,
            Text(
              text,
              style: Styles.manropeMedium14.copyWith(
                color:
                    isRed ? const Color(0xFFD71B30) : const Color(0xFF162B4C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
