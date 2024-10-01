part of 'medicines_cart_bloc_bloc.dart';

abstract class MedicinesCartBlocState {}

final class MedicinesCartBlocInitial extends MedicinesCartBlocState {}

final class MedicinesCartUpdateState extends MedicinesCartBlocState {
  final List<Datum> cartItems;

  MedicinesCartUpdateState({required this.cartItems});
}
