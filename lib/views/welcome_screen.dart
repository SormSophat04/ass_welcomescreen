import 'package:ass_welcomescreen/views/homepage.dart';
import 'package:ass_welcomescreen/welcome_page/welcome1.dart';
import 'package:ass_welcomescreen/welcome_page/welcome2.dart';
import 'package:ass_welcomescreen/welcome_page/welcome3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Welcome1(),
              Welcome2(),
              Welcome3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.05),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black54),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 58),
                        child: Row(
                          children: [
                            const Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 48),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Icon(
                                Icons.chevron_right,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
