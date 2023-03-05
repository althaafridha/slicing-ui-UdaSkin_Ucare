import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  String groupValue = "paypal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text("Payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(height: 40),
              const Text("Payment Available",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: 
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffFafafa),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 1),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/paypal.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Paypal",
                            style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Expanded(child: RadioListTile(
                          value: "paypal",
                          groupValue: groupValue,
                          activeColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (value) {
                            setState(() {
                              groupValue = value.toString();
                            });
                          },
                        ))
                      ],
                    ),
                  
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffFafafa),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 1),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/google-pay.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Google Pay",
                            style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Expanded(child: RadioListTile(
                          value: "googlepay",
                          groupValue: groupValue,
                          activeColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (value) {
                            setState(() {
                              groupValue = value.toString();
                            });
                          },
                        ))
                      ],
                    ),
              ),
              const SizedBox(height: 10),
              Container(
                child: 
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffFafafa),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 1),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/dana-pay.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Danapay",
                            style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Expanded(child: RadioListTile(
                          value: "dana",
                          groupValue: groupValue,
                          activeColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (value) {
                            setState(() {
                              groupValue = value.toString();
                            });
                          },
                        ))
                      ],
                    ),
              ),
              const SizedBox(height: 10),
              Container(
                child:
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffFafafa),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xffF2F2F2), width: 1),
                            image: const DecorationImage(
                              image: AssetImage("assets/icons/gopay.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Gopay",
                            style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                                fontSize: 14)),
                        Expanded(child: RadioListTile(
                          value: "gopay",
                          groupValue: groupValue,
                          activeColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.trailing,
                          onChanged: (value) {
                            setState(() {
                              groupValue = value.toString();
                            });
                          },
                        )
                        )
                      ],
                ),
              ),
              const SizedBox(height: 280),
              ButtonAsset(title: "Save", onPressed: ()=> Navigator.pop(context))
            ]),
          ),
        ),
      ),
    );
  }
}
