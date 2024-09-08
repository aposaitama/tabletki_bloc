import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabletki/data/repository/medicines.dart';
import 'package:tabletki/presentation/pages/homepage.dart';
import 'package:tabletki/provider/medicines_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicinesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tabletki',
        theme:
            ThemeData(scaffoldBackgroundColor: Color.fromRGBO(67, 176, 42, 1)),
        home: HomePage(),
      ),
    );
  }
}
