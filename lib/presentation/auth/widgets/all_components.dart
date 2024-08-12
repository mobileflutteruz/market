import 'package:flutter/material.dart';

import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/login/cubit/login_cubit.dart';
import 'package:karmango/presentation/auth/otp/components/custom_pin.dart';
import 'package:karmango/presentation/auth/otp/cubit/otp_cubit.dart';
import 'package:karmango/presentation/auth/register/components/checkbox_widget.dart';
import 'package:karmango/presentation/auth/widgets/app_logo.dart';
import 'package:karmango/presentation/auth/widgets/couple_text.dart';
import 'package:karmango/presentation/components/password_input.dart';
import 'package:karmango/presentation/components/phone_input.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/modal_progress_hud.dart';

import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
import '../../../core/constants/navigator_const.dart';
import '../../components/name_input.dart';


part '../login/food_login_view.dart';
// part '../login/food_login_page.dart';
part '../change_password/food_change_password_view.dart';
part '../change_password/food_change_password_page.dart';
part '../otp/food_otp_page.dart';
part '../register/food_register_view.dart';
part '../register/food_register_page.dart';
