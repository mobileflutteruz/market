import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/input.dart';
import 'package:karmango/presentation/profile/components/input_phone.dart';
import '../../../../core/utils/utils.dart';
import '../../components/bottom_sheet_header.dart';
import '../../components/common_app_bar.dart';
import '../cubit/food_profile_cubit.dart';

class FoodProfileEditPage extends StatefulWidget {
  const FoodProfileEditPage({super.key});

  @override
  State<FoodProfileEditPage> createState() => _FoodProfileEditPageState();
}

class _FoodProfileEditPageState extends State<FoodProfileEditPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? userFileImage;
  String? imagePath;

  Map<String, IconData> pickImageItems = {
    "Suratga oling": CupertinoIcons.camera,
    "Galareyadan tanlash": CupertinoIcons.photo,
    "Joriy suratni o’chirish": CupertinoIcons.delete,
  };

  Future<void> _imgFromGallery() async {
    final XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (image != null) {
      setState(() {
        imagePath = image.path;
        userFileImage = File(image.path);
      });
    }
  }

  Future<void> _imgFromCamera() async {
    final XFile? image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      setState(() {
        imagePath = image.path;
        userFileImage = File(image.path);
      });
    }
  }

  Future<void> _showPicker(BuildContext context, String title) async {
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
      },
    );
  }

  void _saveProfile(BuildContext context, FoodProfileState state) {
    if (formKey.currentState!.validate()) {
      final UserModel profileUser = UserModel(
        name: nameController.text,
        phoneNumber: phoneController.text,
        image: imagePath,
      );

      // Ma'lumotlarni API'ga yuborish (FoodProfileCubit orqali)
      // context.read<FoodProfileCubit>().updateUserProfile(state);

      // Yuborish muvaffaqiyatli bo'lsa
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          title: context.l10n.editProfile,
          backOnTap: () => Navigator.pop(context),
        ),
        body: Buildable<FoodProfileCubit, FoodProfileState,
            FoodProfileBuildableState>(
          properties: (buildable) => [
            buildable.cards,
            buildable.userInfo,
            buildable.profileUser,
          ],
          builder: (context, state) {
            return BlocBuilder<FoodProfileCubit, FoodProfileState>(
              builder: (context, state) {
                return LayoutBuilder(builder: (context, constraints) {
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
                                  Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () => _showPicker(
                                        context,
                                        context.l10n.changeProfilePicture,
                                      ),
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
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Icon(
                                              CupertinoIcons.plus_circle_fill,
                                              color: FoodColors.primaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  AppUtils.kGap32,
                                  Text(
                                    context.l10n.surname,
                                    style: Styles.manropeMedium14
                                        .copyWith(color: FoodColors.c0E1923),
                                  ),
                                  AppUtils.kGap8,
                                  SizedBox(
                                    height: 48,
                                    child: InputWidget(
                                      keyboardType: TextInputType.text,
                                      textEditingController: surnameController,
                                      hintText: context.l10n.surname,
                                    ),
                                  ),
                                  AppUtils.kGap20,
                                  Text(
                                    context.l10n.name,
                                    style: Styles.manropeMedium14
                                        .copyWith(color: FoodColors.c0E1923),
                                  ),
                                  AppUtils.kGap8,
                                  InputWidget(
                                    keyboardType: TextInputType.text,
                                    textEditingController: nameController,
                                    hintText: context.l10n.name,
                                  ),
                                  AppUtils.kGap20,
                                  Text(
                                    context.l10n.phoneNumber,
                                    style: Styles.manropeMedium14
                                        .copyWith(color: FoodColors.c0E1923),
                                  ),
                                  AppUtils.kGap8,
                                  InputPhone(
                                    keyboardType: TextInputType.number,
                                    textEditingController: phoneController,
                                    hintText: context.l10n.enterPhoneNumber,
                                    validator: (value) =>
                                        locator<AuthRepository>()
                                            .phoneValidator(value!),
                                  ),
                                ],
                              ),
                              SafeArea(
                                child: CommonFoodButtonWidget(
                                    title: context.l10n.save,
                                    onTap: () {
                                      // _saveProfile(context,),
                                      if (formKey.currentState!.validate()) {
                                        BlocProvider.of<FoodProfileCubit>(
                                                context)
                                            .prfileEditData(
                                          name: nameController.text,
                                          phone: phoneController.text,
                                          surname: surnameController.text,
                                        );
                                       
                                      }
                                       Navigator.pushNamed(
                                          context,
                                          FoodNavigatorConst.profileOtp,
                                          arguments: phoneController.text,
                                        );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
              },
            );
          },
        ));
  }
}

class ItemButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData iconData;
  final bool isRed;

  const ItemButtonWidget({
    super.key,
    this.onTap,
    required this.text,
    required this.iconData,
    this.isRed = false,
  });

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
            Icon(iconData, color: isRed ? FoodColors.cD71B30 : null),
            AppUtils.kGap12,
            Text(
              text,
              style: Styles.manropeMedium16.copyWith(
                color: isRed ? FoodColors.cD71B30 : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
