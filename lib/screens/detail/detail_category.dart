import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/detail/detail_category_grid.dart';
import 'package:slicing_ui_ucare/screens/home/home_tab_view.dart';

class DetailCategoryPage extends StatefulWidget {
  const DetailCategoryPage({super.key});

  @override
  State<DetailCategoryPage> createState() => _DetailCategoryPageState();
}

class _DetailCategoryPageState extends State<DetailCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                      const Text("Cleanser",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                    ],
                  ),
                  Container(
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.topRight,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ),
                ],
              ),
              const SizedBox(height: 20),
              const CategoryView(),
              const CategoryView(),
            ]),
          ),
        ),
      ),
    );
  }
}
