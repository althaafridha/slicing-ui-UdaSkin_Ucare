import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/profile/items_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text("Change Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: Image.asset("assets/images/profile-image.png")
                            .image),
                  ),
                ),
                const Text("Change Photo",
                    style: TextStyle(
                        color:  Colors.red,
                        fontWeight: FontWeight.w700,
                        fontSize: 16)),
            
                      ]),
            ),
            const Divider(color: Color(0xffe0e0e0), thickness: 1),
            const ItemsSettings(title: "Name", devider: true, inputValue: "Maleek Kaleeb", hintText: "Enter Your Name",),
            const ItemsSettings(title: "Gender", devider: true, inputValue: "Male", hintText: "Enter Your Gender",),
            const ItemsSettings(title: "Date of Birth", devider: true, inputValue: "10/10/2010", hintText: "Enter Your Date of Birth",),
            const ItemsSettings(title: "Phone Number", devider: true, inputValue: "+62-812-345-678", hintText: "Enter Your Number Phone",),
            const ItemsSettings(title: "Email", devider: true, inputValue: "maleek@kaleeb", hintText: "Enter Your Email",),
            const SizedBox(height: 70),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: const Color(0xff333333),
              height: 50,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text("Save",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16)),
            )
            ]))))
    );
  }
}
