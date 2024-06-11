// import '../product/product_model.dart';

// class CategoryModel {
//   final String name;
//   final String image;
//   final List<DemoProductModel> products;

//   CategoryModel({
//     required this.name,
//     required this.image,
//      this.products= const [],
//   });
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
    const factory CategoryModel({
        int? id,
        String? image,
        String? nameUz,
        String? nameRu,
        String? nameEn,
        DateTime? createdAt,
        dynamic updatedAt,
        List<dynamic>? products,
    }) = _CategoryModel;

    factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
