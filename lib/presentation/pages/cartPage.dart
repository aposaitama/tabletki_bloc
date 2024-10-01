import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabletki/blocs/cart/medicines_cart_bloc_bloc.dart';
import 'package:tabletki/component/CartItemTile.dart';
import 'package:tabletki/presentation/widgets/EmptyCart.dart';
import 'package:tabletki/presentation/widgets/HomeAppBar.dart';
import 'package:tabletki/presentation/widgets/HomeSearchField.dart';

import '../../component/model/medicines.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        const HomeSearchField(),
        Expanded(
          child: BlocBuilder(
            bloc: BlocProvider.of<MedicinesCartBlocBloc>(context),
            builder: (context, state) {
              if (state is MedicinesCartUpdateState) {
                return ListView.builder(
                    itemCount: state.cartItems.length,
                    itemBuilder: (context, index) {
                      Datum medicine = state.cartItems[index];
                      return CartItemTile(
                        medicine: medicine,
                        onPressed: () =>
                            BlocProvider.of<MedicinesCartBlocBloc>(context)
                                .add(CartRemoveEvent(cartItems: medicine)),
                      );
                    });
              } else {
                return const EmptyCart();
              }
            },
          ),
        ),
      ],
    );
  }
}
