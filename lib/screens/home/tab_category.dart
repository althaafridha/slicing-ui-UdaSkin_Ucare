import 'package:flutter/material.dart';

class TabBarMenu extends StatefulWidget {


  const TabBarMenu({Key? key}) : super(key: key);

  @override
  State<TabBarMenu> createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text("All", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
            Text("Cleaners", style: TextStyle(color: Colors.grey)),
            Text("Toner", style: TextStyle(color: Colors.grey)),
            Text("Essence", style: TextStyle(color: Colors.grey)),
            Text("Mosturizer", style: TextStyle(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
