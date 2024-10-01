import 'package:flutter/material.dart';
import 'package:tabletki/presentation/widgets/HomeAppBar.dart';
import 'package:tabletki/presentation/widgets/HomeSearchField.dart';
import 'package:tabletki/widgets/HomeTutorial.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeAppBar(),
          HomeSearchField(),
          HomeTutorial(),
        ],
      ),
    );
  }
}
