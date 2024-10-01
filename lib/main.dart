import 'package:flutter/material.dart';

import 'package:tabletki/blocs/cart/medicines_cart_bloc_bloc.dart';
import 'package:tabletki/blocs/detailed/detailed_bloc.dart';
import 'package:tabletki/blocs/medicine/medicines_bloc_bloc.dart';
import 'package:tabletki/presentation/pages/detailed_page.dart';

import 'package:tabletki/presentation/pages/homepage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MedicinesBloc(),
        ),
        BlocProvider(
          create: (context) => MedicinesCartBlocBloc(),
        ),
        BlocProvider(
          create: (context) => DetailedBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabletki',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(67, 176, 42, 1)),
      home: HomePage(),
    );
  }
}
