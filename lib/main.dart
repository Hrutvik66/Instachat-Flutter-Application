import 'package:flutter/material.dart';
import 'package:instachat/screens/forgot_password.dart';
import 'package:instachat/screens/register_page.dart';
import 'package:instachat/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Login',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/Login': (context) => const Login(),
        // '/Home': (context) => Home(),
        '/Register': (context) => const Register(),
        '/ForgotPassword': (context) => const ForgotPassword(),
      },
    );
  }
}
