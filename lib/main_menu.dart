import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/cart/cart_screen.dart';
import 'package:slicing_ui_ucare/screens/chat/chat_screen.dart';
import 'package:slicing_ui_ucare/screens/home/home_screen.dart';
import 'package:slicing_ui_ucare/screens/profile/profile_screen.dart';
import 'package:slicing_ui_ucare/screens/wishlist/whishlist_screen.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            HomePage(),
            CartPage(),
            WishlistPage(),
            ChatPage(),
            ProfilePage()
          ],
          // child: Text('username : $username,\n email : $email'),
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.black,
          indicator: BoxDecoration(color: Color(0xfffcfcfc),),
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.shopping_bag_outlined),
              text: "Cart",
            ),
            Tab(
              icon: Icon(Icons.favorite_border_outlined),
              text: "Wishlist",
            ),
            Tab(
              icon: Icon(Icons.chat_bubble_outline),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.person_2_outlined),
              text: "Profile",
            ),
            ]),
      ),
    );
  }
}