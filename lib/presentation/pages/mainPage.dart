import 'package:flutter/material.dart';
import 'package:tabletki/widgets/HomeAppBar.dart';
import 'package:tabletki/widgets/HomeSearchField.dart';
import 'package:tabletki/widgets/HomeTutorial.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          HomeSearchField(),
          HomeTutorial(),
        ],
      ),
    );
  }
}
