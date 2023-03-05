import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/checkout/detail_payment_screen.dart';

class SuccessPaymentPage extends StatefulWidget {
  const SuccessPaymentPage({super.key});

  @override
  State<SuccessPaymentPage> createState() => _SuccessPaymentPageState();
}

class _SuccessPaymentPageState extends State<SuccessPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
              Row(
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
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const DetailPaymentPage()));
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text("Payment Confirmation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              Container(
                height: 580,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/success-payment.png"),
                      const SizedBox(height: 20),
                      const Text("Payment Successfull",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                      const SizedBox(height: 10),
                      const Text("Your payment was successful,\nplease see the trail of your order",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
