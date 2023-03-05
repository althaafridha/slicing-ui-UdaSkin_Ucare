import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/order/detail_order_screen.dart';

import '../rate/rate_screen.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
          'Order',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFfffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xfff2f2f2),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(4, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/icons/confirm.png"))),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Confirm',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/icons/process.png"))),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Process',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/icons/delivery.png"))),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Delivery',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xff333333),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/icons/finish.png"))),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Finish',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const DetailOrderPage()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xffF2f2f2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                              image:
                                  AssetImage("assets/images/home-item-1.png"),
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
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                              color: const Color(0xff333333),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffe0e0e0),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Buy Again',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffF2f2f2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RatePage()));
                      },
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                          decoration: BoxDecoration(
                            color: const Color(0xff333333),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffe0e0e0),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:
                                    Offset(4, 4), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Rate',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
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
