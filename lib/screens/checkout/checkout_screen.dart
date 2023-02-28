import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/checkout/courier_screen.dart';
import 'package:slicing_ui_ucare/screens/checkout/payment_screen.dart';
import 'package:slicing_ui_ucare/screens/checkout/success_payment_screen.dart';
import 'package:slicing_ui_ucare/screens/checkout/voucher_screen.dart';

import '../../assets/button.dart';
import 'address_screen.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
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
                  const Text("Checkout",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(height: 35),
              const Text("Shipping To",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddressPage())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:  const [
                      BoxShadow(
                        color: Color(0xfff2f2f2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Office",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                            SizedBox(height: 5,),
                            Text("South Tangerang City, Banten 15414\n0822-1376-1973",
                              style: TextStyle(
                                  color: Color(0xffbdbdbd),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Color(0xffbdbdbd), size: 18,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text("Payment method",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PaymentPage())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:  const [
                      BoxShadow(
                        color: Color(0xfff2f2f2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:  [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xffFafafa),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xffF2F2F2), width: 1),
                                image: const DecorationImage(
                                  image: AssetImage("assets/icons/paypal.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Paypal",
                              style: TextStyle(
                                  color: Color(0xff4F4F4F),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Color(0xffbdbdbd), size: 18,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text("Courier",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CourierPage())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:  const [
                      BoxShadow(
                        color: Color(0xfff2f2f2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:  [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xffFafafa),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xffF2F2F2), width: 1),
                                image: const DecorationImage(
                                  image: AssetImage("assets/icons/pos-indonesia.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Pos Indonesia",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("REG - \$50.00 (2 working days)",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Color(0xffbdbdbd), size: 18,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text("Shopping List",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  const [
                    BoxShadow(
                      color: Color(0xfff2f2f2),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child:Row(
                      children:  [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2f2f2),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color(0xffF2F2F2), width: 1),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/home-item-1.png"),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("White Ginseng Purify Mask",
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                              SizedBox(height: 5,),
                              Text("\$120.00 (1x)",
                                style: TextStyle(
                                    color: Color(0xffbdbdbd),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            ],
                          ),
                      ],
                    ),
              ),
              const SizedBox(height: 35),
              const Text("Voucher",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VoucherPage())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:  const [
                      BoxShadow(
                        color: Color(0xfff2f2f2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:  [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xffFafafa),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xffF2F2F2), width: 1),
                                image: const DecorationImage(
                                  image: AssetImage("assets/icons/discount.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("You Saved \$ 10",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("Promo has been used",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Color(0xffbdbdbd), size: 18,)
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Shipping Fee", style: TextStyle(color: Color(0xffbdbdbd), fontWeight: FontWeight.w500, fontSize: 14)),
                Text("\$30.00", style: TextStyle(color: Color(0xffbdbdbd), fontWeight: FontWeight.w700, fontSize: 14))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Subtotal", style: TextStyle(color: Color(0xffbdbdbd), fontWeight: FontWeight.w500, fontSize: 14)),
                Text("\$120.00", style: TextStyle(color: Color(0xffbdbdbd), fontWeight: FontWeight.w700, fontSize: 14))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total", style: TextStyle(color: Color(0xff333333), fontWeight: FontWeight.w700, fontSize: 16)),
                Text("\$520.000", style: TextStyle(color: Color(0xff333333), fontWeight: FontWeight.w700, fontSize: 16))
              ],
            ),
            const SizedBox(height: 18),
            ButtonAsset(title: "Payment", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SuccessPaymentPage())))
          ],
        ),
      ),
    );
  }
}
