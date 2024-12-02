import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 550,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 31, 31, 31),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage("assets/kids-reading-book.webp"))),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fuel Your Imagination,\nOne Page at Time",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Discover endless stories and immerse\nyourself in the joy of reading anytime,\nanywhore:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
