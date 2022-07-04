import 'package:flutter/material.dart';
import 'package:my_project/Widgets/auth/auth_page.dart';
import 'package:my_project/Widgets/auth/auth_widget.dart';

class TextWrapper extends StatelessWidget {
  final String text;
  const TextWrapper({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF33907C),
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  PageController controller = PageController();
  Button({Key? key, required this.text, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == 'Finish') {
      return Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF33907C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            final navigator = Navigator.of(context);
            navigator.push(MaterialPageRoute(builder: (context) => AuthPage()));
            ;
          },
        ),
      );
    } else
      return Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF33907C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            controller.nextPage(
                duration: Duration(microseconds: 500), curve: Curves.easeIn);
          },
        ),
      );
  }
}
