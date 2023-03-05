import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String title;
  final String price;
  final String image;


  const CartItem({super.key, required this.title, required this.price, required this.image});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool varbool = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Checkbox(
            fillColor: MaterialStateProperty.all(Colors.black),
            value: varbool,
            onChanged: (value) {
              setState(() {
                varbool = value!;
              });
            }),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF2F2F2),
              image: DecorationImage(
                  image: AssetImage(widget.image))),
        ),
        const SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              widget.price,
              style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff828282),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        const SizedBox(width: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffe0e0e0),
              ),
              child: const Center(
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Text(
              "01",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(width: 5),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff333333),
              ),
              child: const Center(
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
