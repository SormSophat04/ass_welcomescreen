import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

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
                    image: AssetImage("assets/girl-reading.webp"))),
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
                    "Endless Books, Endless\nAdventures",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Turn every moment into an aclventure with\nstories that inspire and entertain.",
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
