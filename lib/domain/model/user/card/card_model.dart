class CardModel {
  double? balance;
  String? cardNumber;
  String? expirationMonth;
  String? expirationYear;
  String? cardPhone;

  CardModel({
    this.balance,
    this.cardNumber,
    this.expirationMonth,
    this.expirationYear,
    this.cardPhone,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      balance: json['balance'],
      cardNumber: json['cardNumber'],
      expirationMonth: json['expirationMonth'],
      expirationYear: json['expirationYear'],
      cardPhone: json['cardPhone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'balance': balance,
      'cardNumber': cardNumber,
      'expirationMonth': expirationMonth,
      'expirationYear': expirationYear,
      'cardPhone': cardPhone,
    };
  }
}
