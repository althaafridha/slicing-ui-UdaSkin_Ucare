import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/signIn/signin_screen.dart';

class SignUpPage extends StatefulWidget {
  
  const SignUpPage({super.key});


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _varBool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.topLeft,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Image.asset("assets/icons/logo-2.png"),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: "Full Name",
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
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: "Confirm Password",
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Checkbox(
                          value: _varBool,
                          onChanged: (value) {
                            setState(() {  
                              _varBool = value!;
                            });
                          },
                        ),
                        const Text("I agree to the Terms and Conditions"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    MaterialButton(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                      onPressed: () {},
                      color: const Color(0xff333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "Sign Up",
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
                            "Sign Up with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Sign In",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const SignInPage()));
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
