import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Tab> Categories = [
  Tab(
    icon: Icon(
      FontAwesomeIcons.plus,
      color: kSecondaryColor,
      size: 20,
    ),
  ),
  Tab(
    text: 'Industry',
  )
];

class Category extends StatelessWidget {
  final String category;

  const Category({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
        color: Colors.black12, // Background color
        child: InkWell( // Same as above
          onTap: () {
            // Add your button's onPressed logic here
          },
          child: Container(
            padding: EdgeInsets.all(12.0), // Add padding as needed
            child: Text(
              "$category",
              style: kParagraphTextStyle.copyWith(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
