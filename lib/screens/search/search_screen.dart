import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/screens/search/search_list_screen.dart';
import '../detail/detail_category.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchListPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 335,
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
                            SizedBox(width: 10),
                            Text(
                              "Find your favorite procucts...",
                              style: TextStyle(
                                color: Color(0xff828282),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xfff2f2f2),
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Night Cream",
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 16,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff828282),
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0xfff2f2f2),
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Night Cream",
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 16,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff828282),
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0xfff2f2f2),
                          thickness: 1,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: Color(0xffbdbdbd),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(height: 40),
                const Text(
                  "Popular Search",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffe0e0e0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(image: AssetImage("assets/images/home-item-1.png")),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("White Ginseng Purify Mask", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),),
                      Text("1000 searches", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),),
                    ],)
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffe0e0e0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(image: AssetImage("assets/images/home-item-3.png")),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("White Ginseng Purify Mask", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),),
                      Text("1000 searches", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),),
                    ],)
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  "Popular Search",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailCategoryPage())),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Color(0xffe0e0e0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(image: AssetImage("assets/images/home-item-1.png")),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text("Cleanser", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),),

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffe0e0e0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(image: AssetImage("assets/images/home-item-3.png")),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text("Toner", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
