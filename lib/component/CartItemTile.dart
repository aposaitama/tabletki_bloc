import 'package:flutter/material.dart';
import 'package:tabletki/data/repository/medicines.dart';

class CartItemTile extends StatelessWidget {
  final Datum medicine;
  const CartItemTile({super.key, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 150, height: 150, child: Image.network(medicine.image)),
          Column(
            children: [
              Text(medicine.name),
              Text(medicine.price.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
