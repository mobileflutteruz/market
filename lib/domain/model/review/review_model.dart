import 'package:karmango/domain/model/user/user_model.dart';

class ReviewsModel {
  final int ratingCount1;
  final int ratingCount2;
  final int ratingCount3;
  final int ratingCount4;
  final int ratingCount5;
  final List<ReviewModel> reviews;

  const ReviewsModel({
    this.ratingCount1 = 0,
    this.ratingCount2 = 0,
    this.ratingCount3 = 0,
    this.ratingCount4 = 0,
    this.ratingCount5 =  0,
    this.reviews = const [],
  });

  factory ReviewsModel.fromJson(Map<String, dynamic> json) {
    var reviewList = json['reviews'] as List<dynamic>;
    List<ReviewModel> reviews = reviewList
        .map((reviewJson) => ReviewModel.fromJson(reviewJson))
        .toList();

    return ReviewsModel(
      ratingCount1: json['ratingCount1'],
      ratingCount2: json['ratingCount2'],
      ratingCount3: json['ratingCount3'],
      ratingCount4: json['ratingCount4'],
      ratingCount5: json['ratingCount5'],
      reviews: reviews,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> reviewsJson =
    reviews.map((review) => review.toJson()).toList();

    return {
      'ratingCount1': ratingCount1,
      'ratingCount2': ratingCount2,
      'ratingCount3': ratingCount3,
      'ratingCount4': ratingCount4,
      'ratingCount5': ratingCount5,
      'reviews': reviewsJson,
    };
  }

}




class ReviewModel {
  final UserModel userModel;
  final DateTime reviewDate;
  final double rating;
  final String reviewDescription;
  final List<String> images;

  const ReviewModel({
    required this.userModel,
    required this.reviewDate,
    required this.rating,
    required this.reviewDescription,
    this.images = const [],
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      userModel: UserModel.fromJson(json['userModel']),
      reviewDate: DateTime.parse(json['reviewDate']),
      rating: json['rating'],
      reviewDescription: json['reviewDescription'],
      images: List<String>.from(json['images']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userModel': userModel.toJson(),
      'reviewDate': reviewDate.toIso8601String(),
      'rating': rating,
      'reviewDescription': reviewDescription,
      'images': images,
    };
  }




}
