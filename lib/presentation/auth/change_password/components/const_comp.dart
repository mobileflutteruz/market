import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/auth/change_password/cubit/change_cubit.dart';
import 'package:karmango/presentation/auth/otp/components/custom_pin.dart';
import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';

import 'package:karmango/presentation/auth/widgets/app_logo.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';
import 'package:karmango/presentation/components/phone_input.dart';

// part '../components/phone_input.dart';
part '../components/re_otp_page.dart';

