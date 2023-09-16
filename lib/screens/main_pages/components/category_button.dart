import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';


class CategoryButton extends StatelessWidget {
  final String category;

  const CategoryButton({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(minWidth:5,
      onPressed: () {},
      child: Text(category, style: kParagraphTextStyle.copyWith(color: Colors.white)),
      color: kSecondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
