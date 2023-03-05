import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/star_ratings.dart';
import 'package:slicing_ui_ucare/screens/detail/detail_rating_screen.dart';

import '../cart/cart_screen.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios_new_rounded,
                                        color: Color(0xff828282),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                const Text("Cleaners",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      alignment: Alignment.topLeft,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Color(0xff828282),
                                          ),
                                        ),
                                      ),
                                    ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffEB5757),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child: const Center(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  Image.asset("assets/images/home-item-1.png")
                                      .image),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        height: 550,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("\$29.0",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 28)),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xffEB5757),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "White Gingseng Mask",
                              style: TextStyle(
                                  color: Color(0xff4f4f4f),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RatingProductPage())),
                              child: Row(
                                children: const [
                                  StarRatings(),
                                  SizedBox(width: 10),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            RichText(
                              text: const TextSpan(
                                  text:
                                      "Masks for facial pore care Masks that help clean clogged dirt in the pores, and control oil levels on the face. Helps clear pores clogging...   ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "Read More",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700))
                                  ]),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Size",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: const Color(0xff828282))),
                                      child: const Center(
                                        child: Text(
                                          "100 ml",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: const Color(0xfff8f8f8),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: const Color(0xffe0e0e0))),
                                      child: const Center(
                                        child: Text(
                                          "150 ml",
                                          style: TextStyle(
                                              color: Color(0xffbdbdbd),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: const Color(0xfff8f8f8),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: const Color(0xffe0e0e0))),
                                      child: const Center(
                                        child: Text(
                                          "200 ml",
                                          style: TextStyle(
                                              color: Color(0xffbdbdbd),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: 
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/profile-image.png",
                                                height: 30,
                                                width: 30,
                                              ),
                                              const SizedBox(width: 15),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Abdor Khaleed",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.star,
                                                        color: Color(0xffF2C94C),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Color(0xffF2C94C),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Color(0xffF2C94C),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Color(0xffF2C94C),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Color(0xffF2C94C),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ), 
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: const [
                                              SizedBox(width: 45),
                                              Text(
                                                "the product is very good, fits on my\nskin and also thedelivery is very fast,\nthe admin is ...",
                                                style: TextStyle(
                                                  color: Color(0xff828282),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RatingProductPage())),
                                        child: const Text("SEE ALL", style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700),),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            const SizedBox(height: 40),
                            MaterialButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
                              },
                              height: 60,
                              minWidth: double.infinity,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: const Color(0xff333333),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      )
                    ]))));
  }
}
