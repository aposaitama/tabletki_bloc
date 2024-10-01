part of 'medicines_cart_bloc_bloc.dart';

abstract class CartBlocEvent {}

class CartAddEvent extends CartBlocEvent {
  final Datum cartItems;

  CartAddEvent({required this.cartItems});
}

class CartRemoveEvent extends CartBlocEvent {
  final Datum cartItems;

  CartRemoveEvent({required this.cartItems});
}
