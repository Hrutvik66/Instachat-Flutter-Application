import 'package:flutter/material.dart';
//Named Routes
import 'package:instachat/screens/chat_page.dart';
import 'package:instachat/screens/forgot_password.dart';
import 'package:instachat/screens/register_page.dart';
import 'package:instachat/screens/login_page.dart';
import 'package:instachat/screens/home_page.dart';
//Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //Firebase app initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Register',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/Login': (context) => const Login(),
        '/Home': (context) => Home(),
        '/Register': (context) => const Register(),
        '/ForgotPassword': (context) => const ForgotPassword(),
        '/Chat': (context) => const Chat(),
      },
    );
  }
}
