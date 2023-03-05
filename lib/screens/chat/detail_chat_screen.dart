import 'package:flutter/material.dart';

class DetailChatPage extends StatefulWidget {
  const DetailChatPage({super.key});

  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: const Color(0xff828282),
                )),
          ),
        ],
        title: Row(children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/profile-image.png",
                width: 40.0,
                height: 40.0,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 2,
                right: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Kaleeb Store",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Online",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xffbdbdbd),
                ),
              ),
            ],
          ),
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 120, right: 0),
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Row(mainAxisSize: MainAxisSize.min, children: const [
                  Text(
                    "hello, is skincare still available?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "10.00",
                    style: TextStyle(
                      color: Color(0xffbdbdbd),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Row(mainAxisSize: MainAxisSize.min, children: const [
                  Text(
                    "hello too, there are still Bro\nplease orderall the items are\nready and they are stilllong\nexpiring",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "10.00",
                    style: TextStyle(
                      color: Color(0xffbdbdbd),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Row(mainAxisSize: MainAxisSize.min, children: const [
                  Text(
                    "and there is also a discount too.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "10.00",
                    style: TextStyle(
                      color: Color(0xffbdbdbd),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(
                    Icons.input_outlined,
                    color: Color(0xff828282),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Thank you very much...",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff333333),
                borderRadius: BorderRadius.circular(50),

              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
