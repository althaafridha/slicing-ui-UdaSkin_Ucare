import 'package:flutter/material.dart';
import 'package:slicing_ui_ucare/assets/button.dart';
import 'package:slicing_ui_ucare/screens/cart/cart_item.dart';
import 'package:slicing_ui_ucare/screens/checkout/checkout_screen.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool varbool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                          Icons.arrow_back,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text("Cart",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                      fillColor: MaterialStateProperty.all(Colors.black),
                      value: varbool,
                      onChanged: (value) {
                        setState(() {
                          varbool = value!;
                          // selectAll();
                        });
                      }),
                  const Text(
                    "Select All",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
              const SizedBox(height: 10),
              const CartItem(
                image: "assets/images/home-item-1.png",
                title: "White GInsingeng Purify\nMask",
                price: "\$120.000",
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Select items(4)", style: TextStyle(color: Color(0xff333333), fontWeight: FontWeight.w500, fontSize: 14)),
                Row(
                  children: const [
                    Text("Total:", style: TextStyle(color: Color(0xff333333), fontWeight: FontWeight.w500, fontSize: 14)),
                    Text("\$120.000", style: TextStyle(color: Color(0xff333333), fontWeight: FontWeight.w700, fontSize: 14)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            ButtonAsset(title: "Checkout", onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CheckOutPage())))
          ],
        ),
      ),
    );
  }
}
