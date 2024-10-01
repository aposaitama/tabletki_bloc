import 'package:bloc/bloc.dart';

import 'package:tabletki/component/model/medicines.dart';

part 'medicines_cart_bloc_event.dart';
part 'medicines_cart_bloc_state.dart';

class MedicinesCartBlocBloc
    extends Bloc<CartBlocEvent, MedicinesCartBlocState> {
  List<Datum> cartItems = [];
  MedicinesCartBlocBloc() : super(MedicinesCartBlocInitial()) {
    on<CartAddEvent>((event, emit) {
      cartItems.add(event.cartItems);
      emit(MedicinesCartUpdateState(cartItems: List.from(cartItems)));
    });
    on<CartRemoveEvent>((event, emit) {
      cartItems.remove(event.cartItems);
      emit(MedicinesCartUpdateState(cartItems: List.from(cartItems)));
    });
  }
}
