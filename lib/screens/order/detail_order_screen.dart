import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';
import 'package:slicing_ui_ucare/main_menu.dart';

class DetailOrderPage extends StatefulWidget {
  const DetailOrderPage({super.key});

  @override
  State<DetailOrderPage> createState() => _DetailOrderPageState();
}

class _DetailOrderPageState extends State<DetailOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Detail Order',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: const Color(0xffFafafa),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Order Status',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Success",
                          style: TextStyle(
                            color: Color(0xff27AE60),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ]),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Order ID',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "#00000123456",
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ]),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Order Date',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "2020-03-10",
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ]),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Text("Kaleeb Store",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffe0e0e0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/images/home-item-1.png"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'White GInsingeng\nPurify Mask',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '\$120.00 (1x)',
                            style: TextStyle(
                              color: Color(0xff828282),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Shipping Address",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Kaleb Rahmen", style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                      SizedBox(height: 5),
                      Text("South Tangerang City, Banten 15414\n0822-1376-1973", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Shipping Information",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Pos Indonesia - PSIDN123456", style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                      SizedBox(height: 5),
                      Text("2021-03-09 17;00", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Payment Information",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Payment Method", style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                      Text("Paypal", style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      )),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Shiping fee", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                      Text("\$30.00", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      )),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Sub total", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                      Text("\$120.00", style: TextStyle(
                        color: Color(0xffbdbdbd),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      )),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total", style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )),
                      Text("\$520.00", style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonAsset(
          title: "Buy Again",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainMenu(),
              ),
            );
          },
        ),
      ),
    );
  }
}
