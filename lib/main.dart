import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: LoginScreen.Path,
      routes: {
        WelcomeScreen.path: (context) => WelcomeScreen(),
        RegistrationScreen.path: (context) => RegistrationScreen(),
        LoginScreen.Path: (context) => LoginScreen(),
        ChatScreen.Path: (context) => ChatScreen()
      },
      home: WelcomeScreen(),
    );
  }
}
