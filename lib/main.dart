import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:new_chat_app/screens/chat_screen.dart';
import 'package:new_chat_app/screens/login_screen.dart';
import 'package:new_chat_app/screens/registration_screen.dart';
import 'package:new_chat_app/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
