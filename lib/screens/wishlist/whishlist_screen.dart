
import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/detail/detail_category_grid.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
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
                  icon: const Icon(Icons.search),
                  color: const Color(0xff828282),
                )),
          ),],
        title: const Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 20),
              CategoryView(),
              CategoryView()
            ],
          ),
        ),
      ),
    );
  }
}