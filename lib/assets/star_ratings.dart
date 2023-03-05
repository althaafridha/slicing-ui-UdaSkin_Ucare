import 'package:flutter/material.dart';

class StarRatings extends StatefulWidget {
  const StarRatings({super.key});

  @override
  State<StarRatings> createState() => _StarRatingsState();
}

class _StarRatingsState extends State<StarRatings> {
  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Icon(
        Icons.star,
        color: Color(0xffF2C94C),
      ),
      Icon(
        Icons.star,
        color: Color(0xffF2C94C),
      ),
      Icon(
        Icons.star,
        color: Color(0xffF2C94C),
      ),
      Icon(
        Icons.star,
        color: Color(0xffF2C94C),
      ),
      Icon(
        Icons.star,
        color: Color(0xffF2C94C),
      ),
    ]);
  }
}
