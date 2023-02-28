import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/star_ratings.dart';

class RatingProductPage extends StatefulWidget {
  const RatingProductPage({super.key});

  @override
  State<RatingProductPage> createState() => _RatingProductPageState();
}

class _RatingProductPageState extends State<RatingProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text("Reviewers",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Text(
                    "5.0",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      StarRatings(),
                      SizedBox(height: 5),
                      Text(
                        "1000 Reviews",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xffE0E0E0),
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color(0xff4f4f4f), width: 2)),
                  child: const Center(
                    child: Text(
                      "All Reviewer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffbdbdbd),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "5",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffbdbdbd),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "4",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffbdbdbd),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "3",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffbdbdbd),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "2",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                      const Text(
                        "20 March, 20",
                        style: TextStyle(
                            color: Color(0xffbdbdbd),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
