import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Blogs extends StatelessWidget {
  Blogs({required this.formattedDate, required this.header, required this.image, required this.category});
  final String formattedDate;
  final String header;
  final String image;
  final String category;

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
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          width: 200,
                          child: Text(
                            header!,
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Published',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'sans-serif'
                                    ),
                                  ),
                                  Text(
                                    formattedDate!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'sans-serif'
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    category!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'sans-serif'
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(
                          FontAwesomeIcons.ellipsisVertical,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class RepliedBlogs extends StatelessWidget {
  const RepliedBlogs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              //  picture
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/blog_images/joxa.jpg',),
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Username', style: TextStyle(color: kSecondaryColor, fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Main header', style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                    ),)
                  ],
                ),
              ],
              //  blog usrername
              //  main header
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 2,
                      height: 300,
                      color: Colors.grey.shade500,
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          image: DecorationImage(
                            image: AssetImage('assets/blog_images/image.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.heart)),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.comment)),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.share))
                  ],
                  //  Icons 3 (like, comment, share
                ),
                Row(
                  //  number of likes
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '45', style: likeButtonStyle,
                    ),
                    Text('likes', style: likeButtonStyle,)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              //  picture
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Username', style: TextStyle(color: kSecondaryColor, fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Your reply', style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),)
                  ],
                ),
              ],
              //  blog usrername
              //  main header
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 2,
              color: Colors.grey.shade400,
            )
          ],
        ),

      ),
    );
  }
}