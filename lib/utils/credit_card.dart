import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const CreditCard({Key? key, required this.balance, required this.expiryMonth, required this.expiryYear, this.color, required this.cardNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset('lib/icons/visa.png', height: 60),
              ],
            ),
            Text(
              "$balance€",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                // card expiry date
                Text(
                  expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
