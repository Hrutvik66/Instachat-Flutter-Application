import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instachat/component/google_sign_in.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Textfield state
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //* Firebase Auth
  final user = FirebaseAuth.instance.currentUser;

  //* Signin using email and password
  Future signIn() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // print(credential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
      }
    } catch (e) {
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // if (user != null) {
    //   Navigator.pushNamed(
    //     context,
    //     '/Home',
    //   );
    // }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('images/Register.jpg'),
                height: 200,
              ),
              const SizedBox(height: 20),
              Text(
                'Register',
                style: GoogleFonts.kanit(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(208, 227, 227, 227),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: nameController,
                  cursorColor: const Color.fromARGB(208, 227, 227, 227),
                  cursorWidth: 2.0,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(208, 227, 227, 227),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: emailController,
                  cursorColor: const Color.fromARGB(208, 227, 227, 227),
                  cursorWidth: 2.0,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    icon: Icon(Icons.alternate_email),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(208, 227, 227, 227),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: TextField(
                  controller: passwordController,
                  cursorColor: const Color.fromARGB(208, 227, 227, 227),
                  cursorWidth: 2,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    icon: Icon(Icons.lock_outline_rounded),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: signIn,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  backgroundColor: const Color.fromARGB(255, 144, 0, 255),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(children: const [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (() {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('images/google.png'),
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 92, 92, 92),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Joined us before?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 144, 0, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
