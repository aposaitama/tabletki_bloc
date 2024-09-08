import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabletki/data/repository/medicines.dart';

class MedicineTile extends StatelessWidget {
  final Datum medicine;
  final Function()? onTap;
  const MedicineTile({super.key, required this.medicine, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Image.network(
              medicine.image,
              width: 200,
              height: 200,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      medicine.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      medicine.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Ціна: ${medicine.price.toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      hoverColor: Colors.red,
                      onTap: onTap,
                      onHover: (value) {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.red)),
                        width: 200,
                        height: 30,
                        child: Center(
                          child: Text(
                            'Додати до кошика',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    )
                  ]),
            )
          ]),
          Divider()
        ],
      ),
    );
  }
}
