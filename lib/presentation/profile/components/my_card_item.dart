import 'package:flutter/material.dart';

class FoodProfileCardWidget extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final String cardData;
  final bool isProfileCard;

  const FoodProfileCardWidget({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.cardData,
    this.isProfileCard = false,
  });

  // Karta raqamini yulduzchalar bilan yashirish funksiyasi
  String maskCardNumber(String cardNumber) {
    if (cardNumber.length >= 16) {
      return '${cardNumber.substring(0, 4)} **** **** ${cardNumber.substring(cardNumber.length - 4)}';
    }
    return cardNumber; // Agar raqam noto'g'ri formatda bo'lsa, aslini qaytaradi.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isProfileCard ? 96 : 136,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.red.shade700,
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.red.shade700, Colors.red.shade500],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Баланс:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                balance,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Karta raqami yulduzchalar bilan formatlanadi
              Text(
                maskCardNumber(cardNumber),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                cardData,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
