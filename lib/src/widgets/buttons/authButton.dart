import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class AuthButton extends StatelessWidget {
  final String text;
  final Function function;
  const AuthButton({Key? key,required this.text,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: Colors.white)),
        onPressed: () async {
          this.function();
        },
        color: Colors.white,
        textColor: Colors.black87,
        child: Text(text,
            style: GoogleFonts.poppins(fontSize: 14)),
      ),
    );
  }
}

class GoogleAuthButton extends StatelessWidget {
  final String text;
  final Function function;
  const GoogleAuthButton({Key? key,required this.text,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: Colors.white)),
        onPressed: () async {
          this.function();
        },
        color: Colors.white,
        textColor: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.google),
            SizedBox(width: 10,),
            Text(text,
                style: GoogleFonts.poppins(fontSize: 14)),
          ],
        ))
    );
  }
}
