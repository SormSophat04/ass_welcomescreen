import 'package:flutter/material.dart';

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});

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
                image:
                    DecorationImage(image: AssetImage("assets/4094522.webp"))),
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
                    "Where Every Page\nComes to Life",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Olve into captivating tales and let every page\ntake you somewhere new",
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
