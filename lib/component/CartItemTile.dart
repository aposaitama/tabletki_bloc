import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabletki/data/repository/medicines.dart';
import 'package:tabletki/provider/medicines_provider.dart';

class CartItemTile extends StatefulWidget {
  final Datum medicine;
  const CartItemTile({super.key, required this.medicine});

  @override
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: SizedBox(
              width: 200,
              height: 200,
              child: Image.network(
                widget.medicine.image,
                fit: BoxFit.contain,
              )),
          title: Text(widget.medicine.name),
          subtitle: Text(widget.medicine.price.toString()),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => removeItemFromCart(),
          ),
        ),
      ),
    );
  }

  removeItemFromCart() {
    Provider.of<MedicinesProvider>(context, listen: false)
        .removeItemFromCart(widget.medicine);
  }
}
