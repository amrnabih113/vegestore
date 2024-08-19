import 'dart:ui'; 
import 'package:flutter/material.dart';

class AcceptionPage extends StatelessWidget {
  const AcceptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // the image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/vege.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // the blur
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: Container(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          //the body
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("images/celebration.png", height: 300),
                  Image.asset(
                    "images/correct_sign.png",
                    height: 180,
                  )
                ],
              ),
              const Text(
                "Your Order has been accepted",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "Your items has been placed and it's on it's way to being processed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xff00AD54),
                  height: 60,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Track Order",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: MaterialButton(
                  onPressed: () {},
                  height: 60,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Back to home",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
