import 'package:flutter/material.dart';
class StatusItems extends StatelessWidget {
  StatusItems({required this.text, required this.outline, required this.style, required this.background});
  final String text;
  final Color outline;
  final TextStyle style;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: outline,
                    width: 2,
                  ),
                  color: background,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Center(
                child: Text(
                  text,
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
