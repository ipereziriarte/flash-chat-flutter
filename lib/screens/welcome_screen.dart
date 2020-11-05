import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const path = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    // Upperbound must be 1 max if the animation is a curve
    controller = AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.blue).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
        // do nothing
      });
      print(animation.value);
    });
  }

  @override
  void dispose() {
    // Important to free resources
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  speed: Duration(milliseconds: 200),
                  repeatForever: true,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log in',
              color: Colors.blueAccent,
              onClick: () {
                Navigator.pushNamed(context, LoginScreen.path);
              },
            ),
            RoundedButton(
                title: 'Register',
                color: Colors.blueAccent,
                onClick: () {
                  Navigator.pushNamed(context, RegistrationScreen.path);
                }),
          ],
        ),
      ),
    );
  }
}
