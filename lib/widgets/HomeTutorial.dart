import 'package:flutter/material.dart';
import 'package:tabletki/domain/model/buildCard.dart';

class HomeTutorial extends StatelessWidget {
  const HomeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: GridView.count(
        // childAspectRatio: 4 / 1,
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          buildCard(
              description:
                  'Знайдіть потрібні товари в пошуку або у каталозі та натисніть «Знайти в аптеках»',
              imagePath: 'lib/assets/icons/icon-step1.svg',
              title: 'Знайдіть товар'),
          buildCard(
              description:
                  'Виберіть зі списку відповідну аптеку та натисніть «Забронювати»',
              imagePath: 'lib/assets/icons/icon-step2.svg',
              title: 'Виберіть аптеку'),
          buildCard(
              description:
                  'Додайте ваші контактні дані та натисніть «Підтвердити бронь»',
              imagePath: 'lib/assets/icons/icon-step3.svg',
              title: 'Забронюйте'),
          buildCard(
              description:
                  'Ви отримаєте повідомлення з номером бронювання. Заберіть замовлення за цим номером',
              imagePath: 'lib/assets/icons/icon-step4.svg',
              title: 'Заберіть замовлення'),
        ],
      ),
    );
  }
}
