import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/order/order_screen.dart';
import 'package:slicing_ui_ucare/screens/profile/items_profile.dart';
import 'package:slicing_ui_ucare/screens/profile/settings_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                const Text("Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image:
                            Image.asset("assets/images/profile-image.png").image),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Maalek Shobab",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                      SizedBox(height: 5),
                      Text("Silver members",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ]),
              ]),
            const SizedBox(height: 35),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderPage())),
              child: const ItemsProfile(icons: Icons.list_alt_rounded, title: "My Orders", devider: true)),
            const ItemsProfile(icons: Icons.location_on_outlined, title: "Shipping Addresses", devider: true),
            const ItemsProfile(icons: Icons.payment_outlined, title: "Payment Method", devider: true),
            const ItemsProfile(icons: Icons.discount_outlined, title: "My Voucher", devider: true),
            
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage())),
              child: const ItemsProfile(icons: Icons.settings_outlined, title: "Settings", devider: true)
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
             child: const Text("Logout",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
            ),
            const Divider(
              color: Color(0xffe0e0e0),
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
             child: const Text("Version 0.1",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12)),
            ),
          ],
        ),
      ),
    )));
  }
}
