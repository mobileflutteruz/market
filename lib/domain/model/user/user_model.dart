import 'package:karmango/domain/model/user/card/card_model.dart';
import 'package:karmango/domain/model/user/card/plastik_card.dart';

import '../product/product_model.dart';

class UserModel {
  final String? name;
  final String? phoneNumber;
  final String? password;
  final String? image;
  final List<CardModel> cards;
  final List<DemoProductModel> savedProducts;
  final List<PlasticCard> newCard;

  UserModel({
    this.name,
    this.phoneNumber,
    this.password,
    this.image,
    this.cards = const [],
    this.savedProducts = const [],
    this.newCard = const [],
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var cardsList = json['cards'] as List<dynamic>;
    var cardsLists = json['newCard'] as List<dynamic>;

    List<CardModel> cards =
        cardsList.map((cardJson) => CardModel.fromJson(cardJson)).toList();
    List<PlasticCard> newCard =
        cardsLists.map((e) => PlasticCard.fromJson(e)).toList();

    var savedProductsList = json['savedProducts'] as List<dynamic>;
    List<DemoProductModel> savedProducts = savedProductsList
        .map((productJson) => DemoProductModel.fromJson(productJson))
        .toList();

    return UserModel(
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      password: json['password'],
      image: json['image'],
      cards: cards,
      savedProducts: savedProducts,
      newCard: newCard,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> cardsJson =
        cards.map((card) => card.toJson()).toList();
        
    List<Map<String, dynamic>> cardJson =
        cards.map((newCard) => newCard.toJson()).toList();

    List<Map<String, dynamic>> savedProductsJson =
        savedProducts.map((product) => product.toJson()).toList();

    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'password': password,
      'image': image,
      'cards': cardsJson,
      'savedProducts': savedProductsJson,
      'newCard': cardJson,
    };
  }

  @override
  String toString() {
    return 'UserModel{name: $name, phoneNumber: $phoneNumber, password: $password, image: $image, cards: $cards, savedProducts: $savedProducts, newCard: $newCard}';
  }
}
