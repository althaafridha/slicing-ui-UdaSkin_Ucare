import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {

  String groupValue = "voucher1";

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      const Text("Voucher",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ],
                  ),
                  const Text("Reset",
                      style: TextStyle(
                          color: Color(0xffEB5757),
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 250,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      initialValue: "ABCDEF1234",
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your voucher code",
                        hintStyle: TextStyle(
                            color: Color(0xffbdbdbd),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    onPressed: (){},
                    color: const Color(0xff333333),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text("Apply",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  )
                ],
              ),
              const SizedBox(height: 40),
              const Text("Vouchers Available",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 20),
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
                                  image: AssetImage("assets/icons/truck.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Free Shipping",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("Valid for 3 more days",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                        ],
                      ),
                      Expanded(child: RadioListTile(
                          value: "voucher1",
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
                                  image: AssetImage("assets/icons/truck.png"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Free Shipping",
                                  style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                                SizedBox(height: 5,),
                                Text("Valid for 7 more days",
                                  style: TextStyle(
                                      color: Color(0xffbdbdbd),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12)),
                              ],
                            ),
                        ],
                      ),
                      Expanded(child: RadioListTile(
                          value: "voucher2",
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
              const SizedBox(height: 250),
              ButtonAsset(title: "Save", onPressed: ()=> Navigator.pop(context))
            ]),
          ),
        ),
      ),
    );
  }
}
