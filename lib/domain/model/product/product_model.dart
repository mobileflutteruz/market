class DemoProductModel {
  final int id;
  final String name;
  final String category;
  final double? price;
  final bool isLiked;
  final List<String> images;
  final List<String> productColorImages;
  final int avialableProductCount;
  String description;
  final Map<String, String> characteristicsProduct;

  final int? discountPercent;
  final bool isNew;

  DemoProductModel({
    required this.name,
    required this.id,
    required this.category,
    required this.price,
    this.isLiked = false,
    this.images = const [],
    this.productColorImages = const [],
    this.avialableProductCount = 0,
    required this.description,
    this.characteristicsProduct = const {},
    this.discountPercent,
    this.isNew = false,
  });

  factory DemoProductModel.fromJson(Map<String, dynamic> json) {
    var imagesList = json['images'] as List<dynamic>;
    List<String> images = imagesList.map((image) => image as String).toList();

    var productColorImagesList = json['productColorImages'] as List<dynamic>;
    List<String> productColorImages =
        productColorImagesList.map((image) => image as String).toList();

    var characteristicsProductJson =
        json['characteristicsProduct'] as Map<String, dynamic>;
    Map<String, String> characteristicsProduct =
        characteristicsProductJson.cast<String, String>();

    return DemoProductModel(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      price: json['price'],
      isLiked: json['isLiked'],
      images: images,
      productColorImages: productColorImages,
      avialableProductCount: json['availableProductCount'],
      description: json['description'],
      characteristicsProduct: characteristicsProduct,
      discountPercent: json['discountPercent'],
      isNew: json['isNew'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'price': price,
      'isLiked': isLiked,
      'images': images,
      'productColorImages': productColorImages,
      'availableProductCount': avialableProductCount,
      'description': description,
      'characteristicsProduct': characteristicsProduct,
      'discountPercent': discountPercent,
      'isNew': isNew,
    };
  }
}
