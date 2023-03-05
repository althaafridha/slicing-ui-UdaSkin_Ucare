import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {

  String groupValue = "office";

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
                  const Text("Shipping",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(height: 40),
              const Text("Address Available",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xfff2f2f2),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        value: "office", 
                        activeColor: Colors.black,
                        groupValue: groupValue, 
                        onChanged: (value){
                          setState(() {
                            groupValue = value.toString();
                          });
                        }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Office", style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                        SizedBox(height: 5),
                        Text("South Tangerang City, Banten 15414\n0822-1376-1973", style: TextStyle(
                          color: Color(0xffbdbdbd),
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                      ],
                    ),
                    const SizedBox(width: 60,),
                    const Icon(Icons.edit, color: Color(0xff333333), size: 20),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xfff2f2f2),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        value: "home", 
                        activeColor: Colors.black,
                        groupValue: groupValue, 
                        onChanged: (value){
                          setState(() {
                            groupValue = value.toString();
                          });
                        }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Home", style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                        SizedBox(height: 5),
                        Text("South Tangerang City, Banten 15414\n0822-1376-1973", style: TextStyle(
                          color: Color(0xffbdbdbd),
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                      ],
                    ),
                    const SizedBox(width: 60,),
                    const Icon(Icons.edit, color: Color(0xff333333), size: 20),
                  ],
                ),
              ),
              const SizedBox(height: 350),
              ButtonAsset(title: "Save", onPressed: ()=> Navigator.pop(context))
            ]),
          ),
        ),
      ),
    );
  }
}
