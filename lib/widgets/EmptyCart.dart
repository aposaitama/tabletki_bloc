import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final titleText = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color with opacity
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur effect
            offset:
                Offset(0, 5), // Horizontal and vertical offset of the shadow
          ),
        ],
      ),
      width: 400,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 30, left: 10, right: 10),
        child: Column(
          children: [
            Text(
              'Кошик порожній :(',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'У вашому кошику порожньо?',
                  style: titleText,
                ),
                Text(
                    'Це не страшно! Якщо ви зареєстровані на сайті Tabletki і в кошику були товари, то щоб їх побачити необхідно авторизуватись.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Навіщо бронювати?',
                  style: titleText,
                ),
                Text(
                    'Ви точно будете впевнені, що заброньовані товари вас чекають в аптеці за вказаною ціною.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Як зробити бронь?',
                  style: titleText,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Знайдіть товари і додайте їх до корзини у зручній для вас аптеці, після чого оформіть бронь.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
