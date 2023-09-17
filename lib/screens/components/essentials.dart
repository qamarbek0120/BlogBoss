import 'package:boss_blog/screens/components/blogs.dart';
import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/components/blogs.dart';




class PageOne extends StatelessWidget {
  const PageOne({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: <Widget>[
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
              Blogs(
                formattedDate: formattedDate,
                header: 'Welcome',
                image: 'images/logo1.png',
              ),
            ],
          ),
        ),
      )

    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: Text(
        'Two',style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }
}
class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text(
        'Three',style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );;
  }
}



class Essentials extends StatelessWidget {
  Essentials({required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: TextButton(
          onPressed: onPressed,
          child: Text(text, style: secondarystatusStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade600
          )),
        ),
      ),
    );
  }
}