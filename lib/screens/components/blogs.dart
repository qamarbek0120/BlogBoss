import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Blogs extends StatelessWidget {
  Blogs({required this.formattedDate, required this.header, required this.image});
  final String formattedDate;
  final String header;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.black12,
                  width: 1
              )
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 200,
                        child: Text(
                          header,
                          style: mainPersonStyle.copyWith(
                            fontFamily: 'sans-serif',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Published',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  fontFamily: 'sans-serif'
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              formattedDate,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  fontFamily: 'sans-serif'
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(
                                    FontAwesomeIcons.ellipsisVertical,
                                    size: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}