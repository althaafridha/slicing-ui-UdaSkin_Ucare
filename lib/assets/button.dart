import 'package:flutter/material.dart';

class ButtonAsset extends StatefulWidget {
  final String title;
  final Function onPressed;

  const ButtonAsset({super.key, required this.title, required this.onPressed});

  @override
  State<ButtonAsset> createState() => _ButtonAssetState();
}

class _ButtonAssetState extends State<ButtonAsset> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        widget.onPressed();
      },
      height: 65,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: const Color(0xff333333),
      child: Text(
        widget.title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}
