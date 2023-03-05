import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/service/data.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.0,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 290),
        
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (_, index) {
          final SkinCare skinCarelist = skinCareList[index];
          return Container(
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      skinCarelist.imageAsset,
                      height: 170,
                      width: double.infinity,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text(skinCarelist.name, maxLines: 1, style: const TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text(skinCarelist.desc, maxLines: 1, style: const TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(skinCarelist.price, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite, color: Color(0xfff2f2f2), size: 20,),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
          );
        },
        itemCount: skinCareList.length,
      ),
    );
  }
}