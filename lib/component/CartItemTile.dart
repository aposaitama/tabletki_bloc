import 'package:flutter/material.dart';
import 'package:tabletki/component/model/medicines.dart';

class CartItemTile extends StatelessWidget {
  final Datum medicine;
  final Function()? onPressed;
  const CartItemTile(
      {super.key, required this.medicine, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(
            medicine.image,
            fit: BoxFit.contain,
          ),
          title: Text(medicine.name),
          subtitle: Text(medicine.price.toString()),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
