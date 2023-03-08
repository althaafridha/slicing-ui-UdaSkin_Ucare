import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/order/order_screen.dart';

import '../../assets/button.dart';

class RatePage extends StatefulWidget {
  const RatePage({super.key});

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                color: const Color(0xff828282),
              )),
        ),
        title: const Text(
          'Rate',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Extraordinary",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "You rate Product 5 Stars",
                    style: TextStyle(
                        color: Color(0xffBDBDBD),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star_rounded, color: Color(0xffFABA00), size: 50),
                      Icon(Icons.star_rounded, color: Color(0xffFABA00), size: 50),
                      Icon(Icons.star_rounded, color: Color(0xffFABA00), size: 50),
                      Icon(Icons.star_rounded, color: Color(0xffFABA00), size: 50),
                      Icon(Icons.star_rounded, color: Color(0xffFABA00), size: 50),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xff828282), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/add-image.png"),
                        const SizedBox(width: 5),
                        const Text("Add Image", style: TextStyle(color: Color(0xff333333), fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "My review about this products...",
                        hintStyle: TextStyle(color: Color(0xffbdbdbd), fontSize: 16, fontWeight: FontWeight.w400),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20, top: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonAsset(
          title: "Submit",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OrderPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
