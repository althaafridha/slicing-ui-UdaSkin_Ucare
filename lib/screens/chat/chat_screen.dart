import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/chat/detail_chat_screen.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                onPressed: () {},
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
                  icon: const Icon(Icons.search),
                  color: const Color(0xff828282),
                )),
          ),
        ],
        title: const Text(
          'Chat',
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
            child: Column(
              children: [
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailChatPage(),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                          Image.asset(
                          "assets/images/profile-image.png",
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Kaleeb Store", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),),
                              SizedBox(height: 5,),
                              Text("Ok, Please order it brother", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffbdbdbd),
                              ),),
                            ],
                          ),
                        ]),
                          const Text("2021-03-01", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff828282),
                          ),),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: Color(0xffe0e0e0),
                  thickness: 1,
                ),
                const SizedBox(height: 10,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                        Image.asset(
                        "assets/images/profile-image.png",
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Kaleeb Store", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),),
                            SizedBox(height: 5,),
                            Text("Ok, Please order it brother", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffbdbdbd),
                            ),),
                          ],
                        ),
                      ]),
                        const Text("2021-03-01", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff828282),
                        ),),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: Color(0xffe0e0e0),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
