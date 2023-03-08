import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/home/home_tab_view.dart';
import 'package:slicing_ui_ucare/screens/home/tab_category.dart';

import '../search/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      "assets/icons/logo-2.png",
                      width: 120,
                    ),
                  ),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchPage()));
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Herbal Clay\nPurifyng Mask",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                            onPressed: () {},
                            color: const Color(0xff333333),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                    Image.asset("assets/images/home-top-item.png"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TabBarMenu(),
              const SizedBox(
                height: 10,
              ),
              const HomeTabView(),
            ],
          ),
        )),
      ),
    );
  }
}
