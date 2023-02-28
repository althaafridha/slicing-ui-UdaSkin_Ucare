import 'package:flutter/material.dart';

class ItemsProfile extends StatefulWidget {
  final IconData icons;
  final String title;
  final bool devider;

  const ItemsProfile(
      {super.key,
      required this.icons,
      required this.title,
      required this.devider});

  @override
  State<ItemsProfile> createState() => _ItemsProfileState();
}

class _ItemsProfileState extends State<ItemsProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(widget.icons, color: Colors.black,),
                  const SizedBox(width: 10),
                  Text(widget.title,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 18,
              ),
            ],
          ),
        ),
        divider()
      ],
    );
  }

  divider() {
    if (widget.devider == true) {
      return const Divider(color: const Color(0xffe0e0e0), thickness: 1);
    } else {
      return const Divider(color: Colors.transparent);
    }
  }
}
