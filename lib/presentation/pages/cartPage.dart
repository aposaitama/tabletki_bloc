import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabletki/component/CartItemTile.dart';
import 'package:tabletki/provider/medicines_provider.dart';
import 'package:tabletki/widgets/EmptyCart.dart';
import 'package:tabletki/widgets/HomeAppBar.dart';
import 'package:tabletki/widgets/HomeSearchField.dart';

import '../../data/repository/medicines.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        HomeSearchField(),
        Expanded(
          child: Consumer<MedicinesProvider>(
            builder: (context, value, child) {
              //getter from cartItems.

              final cartItems = value.getUserCart();

              //cart is empty

              if (cartItems.isEmpty) {
                return Container(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Кошик',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          EmptyCart(),
                        ],
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                );
              }

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        Datum medicine = cartItems[index];
                        return CartItemTile(medicine: medicine);
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
