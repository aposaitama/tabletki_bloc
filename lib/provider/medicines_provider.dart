import 'package:flutter/material.dart';
import 'package:tabletki/data/repository/medicines.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class MedicinesProvider extends ChangeNotifier {
  static const apiEndpoint =
      'https://aposaitama.github.io/host_api/medicines.json';
  bool isLoading = true;
  String error = '';
  Medicines medicines = Medicines(data: []);

  getDataFromAPI() async {
    try {
      Response response = await http.get(Uri.parse(apiEndpoint));
      medicines = medicinesFromJson(response.body);
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;
    notifyListeners();
  }

  //initialize cart
  List<Datum> _userCart = [];

  //get cart
  List<Datum> getUserCart() {
    return _userCart;
  }

  //add items from cart
  void removeItemFromCart(Datum item) {
    _userCart.remove(item);
    notifyListeners();
  }

  void addItemToCart(Datum item) {
    _userCart.add(item);
    notifyListeners();
  }
}
