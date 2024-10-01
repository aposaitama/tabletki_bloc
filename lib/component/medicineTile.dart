import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:tabletki/component/model/medicines.dart';

class MedicineTile extends StatelessWidget {
  final Datum medicine;
  final Function()? onTapName;
  final Function()? onTapCart;
  const MedicineTile(
      {super.key,
      required this.medicine,
      required this.onTapCart,
      required this.onTapName});

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
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: onTapName,
                      child: Text(
                        medicine.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      medicine.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Ціна: ${medicine.price.toString()}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      hoverColor: Colors.red,
                      onTap: onTapCart,
                      onHover: (value) {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.red)),
                        width: 200,
                        height: 30,
                        child: const Center(
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
          const Divider()
        ],
      ),
    );
  }
}
