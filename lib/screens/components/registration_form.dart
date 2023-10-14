import 'package:flutter/material.dart';
import 'package:boss_blog/constants.dart';
import 'package:boss_blog/screens/registration_screen.dart';
import 'package:boss_blog/components/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registration_form extends StatelessWidget {
  registration_form({required this.mainTitle, required this.reference});
  final String mainTitle;
  final String reference;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            mainTitle,
            style: kLoginTextStyle,),
        ),
        Text(
          reference,
          style: TextStyle(
              color: Colors.black45,
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }
}

class login_button extends StatelessWidget {
  login_button({this.input,this.control,});
  final String? input;
  final TextEditingController? control;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
      child: TextField(
        controller: control,
        decoration: InputDecoration(
            hintText: input,
            hintStyle: TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: kSecondaryColor
                ),
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}

class PasswordFieldButton extends StatefulWidget {
  PasswordFieldButton({Key? key, required this.input, required this.control}):super(key: key);
  final String input;
  final TextEditingController control;

  @override
  State<PasswordFieldButton> createState() => _PasswordFieldButtonState();
}
var obscureText = true;
ChangeIcon() {
  if(obscureText==true){
    return eyeslash();
    }
  else{
    return eye();
  }}
class _PasswordFieldButtonState extends State<PasswordFieldButton> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
      child: TextField(
        obscureText: obscureText,
        controller: widget.control,
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: ChangeIcon(),
            ),
            hintText: widget.input,
            hintStyle: TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: kSecondaryColor
                ),
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );;
  }
}

class eye extends StatelessWidget {
  const eye({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.eye,
      color: Colors.grey);
  }
}

class eyeslash extends StatelessWidget {
  const eyeslash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.eyeSlash,
      color: Colors.grey);
  }
}



