import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:tabletki/component/model/medicines.dart';

class MedicinesRepo {
  static const apiEndpoint =
      'https://aposaitama.github.io/host_api/medicines.json';
  Future<Medicines> getMedicines() async {
    Response response = await http.get(Uri.parse(apiEndpoint));
    return medicinesFromJson(response.body);
  }
}
