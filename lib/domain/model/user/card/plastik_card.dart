class PlasticCard {
  final String cardHolderName;
  final String cardNumber;
  final String nomerPhone;

  PlasticCard({
    required this.cardHolderName,
    required this.cardNumber,
    required this.nomerPhone,
  });

  factory PlasticCard.fromJson(Map<String, dynamic> json) {
    return PlasticCard(
      cardHolderName: json['cardHolderName'],
      cardNumber: json['cardNumber'],
      nomerPhone: json['nomerPhone'],
    );
  }
}
