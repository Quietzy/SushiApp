import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final image;
  final String categoryName;
  final String price;

  const Category(
      {super.key,
      required this.image,
      required this.categoryName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(children: [
          Image.asset(
            image,
            height: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(categoryName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(price), Icon(Icons.star)],
          )
        ]),
      ),
    );
  }
}
