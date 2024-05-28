import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/favourites/food_favourites_page.dart';
import 'package:karmango/presentation/food_basket/food_basket_view.dart';
import 'package:karmango/presentation/food_category/food_category_page.dart';
import 'package:karmango/presentation/food_profile/food_profile_view.dart';


import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/constants.dart';

import '../../../../domain/model/product/product_model.dart';
import '../../../core/utils/app_layouts.dart';
import '../../../../core/utils/utils.dart';

import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/product/product_model.dart';
import 'package:karmango/presentation/home/all_prodact/all_prodact.dart';
import 'package:karmango/presentation/home/components/banners_view.dart';
import 'package:karmango/presentation/home/components/food_products_view_widget.dart';
import 'package:karmango/presentation/home/components/home_app_bar.dart';
import 'package:karmango/presentation/home/components/searchbar.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

part '../food_home_view.dart';
// part 'categories_view.dart';
// part 'category_item.dart';
// part 'home_app_bar.dart';
// part 'medium_banner_item.dart';
// part 'medium_banners_view.dart';

