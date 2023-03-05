import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';

class CourierPage extends StatefulWidget {
  const CourierPage({super.key});

  @override
  State<CourierPage> createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {

  String groudValue = "pos";

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
                  const Text("Courier",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(height: 40),
              const Text("Courier Available",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: 
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
                            Expanded(
                          child: RadioListTile(
                            value: "pos",
                            groupValue: groudValue,
                            activeColor: Colors.black,
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (value) {
                              setState(() {
                                groudValue = value.toString();
                              });
                            },
                          ),
                        )
                        ],
                      ),
                  
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: 
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
                                  image: AssetImage("assets/icons/jne.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("JNE Express",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("REG - \$50.00 (3 working days)",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                            Expanded(
                          child: RadioListTile(
                            value: "jne",
                            groupValue: groudValue,
                            activeColor: Colors.black,
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (value) {
                              setState(() {
                                groudValue = value.toString();
                              });
                            },
                          ),
                        )
                        ],
                      ),
                  
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: 
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
                                  image: AssetImage("assets/icons/j&t.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("J&T Express",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("REG - \$50.00 (5 working days)",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                            Expanded(
                          child: RadioListTile(
                            value: "j&t",
                            groupValue: groudValue,
                            activeColor: Colors.black,
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (value) {
                              setState(() {
                                groudValue = value.toString();
                              });
                            },
                          ),
                        )
                        ],
                      ),
                  
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: 
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
                                  image: AssetImage("assets/icons/sicepat.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Sicepat",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("REG - \$50.00 (7 working days)",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                            Expanded(
                          child: RadioListTile(
                            value: "sicepat",
                            groupValue: groudValue,
                            activeColor: Colors.black,
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (value) {
                              setState(() {
                                groudValue = value.toString();
                              });
                            },
                          ),
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
