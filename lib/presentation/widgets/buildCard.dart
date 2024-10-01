import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class buildCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  const buildCard(
      {super.key,
      required this.description,
      required this.imagePath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: null,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  imagePath, // Replace with your SVG file path
                  height: 45, // Set the height and width as needed
                  width: 45,
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(child: Text(title)),
              ],
            ),
            Flexible(child: Text(description)),
          ],
        ),
      ),
    );
  }
}
