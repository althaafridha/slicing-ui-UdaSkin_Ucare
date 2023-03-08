import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/main_menu.dart';
import 'package:slicing_ui_ucare/screens/welcomescreen/welcome_screen.dart';

import '../signUp/signup_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool varBool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.topLeft,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 140),
                    Image.asset("assets/icons/logo-2.png"),
                    const SizedBox(height: 60),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: "Email",
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: "Password",
                      ),
                    ),
                    const SizedBox(height: 40),
                    MaterialButton(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainMenu()),
                        );
                      },
                      color: const Color(0xff333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "------------------------- or -------------------------",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 25),
                    MaterialButton(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      onPressed: () {},
                      shape: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/google.png",
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "Sign In with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 65),
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const SignUpPage()));
                              },
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
