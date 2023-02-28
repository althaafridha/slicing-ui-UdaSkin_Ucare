import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/detail/detail_category_grid.dart';
import 'package:slicing_ui_ucare/screens/search/search_filter_screen.dart';

class SearchListPage extends StatefulWidget {
  const SearchListPage({super.key});

  @override
  State<SearchListPage> createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                          Icons.arrow_back_ios,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 280,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 20),
                        Icon(
                          Icons.search,
                          color: Color(0xff828282),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Cleanser",
                          style: TextStyle(
                            color: Color(0xff828282),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchFilterPage()));
                        },
                        icon: const Icon(
                          Icons.filter_alt_outlined,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CategoryView(),
              const CategoryView()
            ]),
          ),
        ),
      ),
    );
  }
}
