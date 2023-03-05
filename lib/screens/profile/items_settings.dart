import 'package:flutter/material.dart';

class ItemsSettings extends StatefulWidget {
  final String title;
  final String inputValue;
  final String hintText;
  final bool devider;

  const ItemsSettings(
      {super.key,
      required this.title,
      required this.devider, required this.inputValue, required this.hintText});

  @override
  State<ItemsSettings> createState() => _ItemsSettingsState();
}

class _ItemsSettingsState extends State<ItemsSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(widget.title,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
              Expanded(
                child: TextFormField(
                  initialValue: widget.inputValue,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              )
              ]),
            ),
        divider()
      ],
    );
  }

  divider() {
    if (widget.devider == true) {
      return const Divider(color:  Color(0xffe0e0e0), thickness: 1);
    } else {
      return const Divider(color: Colors.transparent);
    }
  }
}
