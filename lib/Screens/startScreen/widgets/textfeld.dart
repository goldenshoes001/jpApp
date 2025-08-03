import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/Screens/startScreen/widgets/button.dart';

class Textfeld extends StatelessWidget {
  const Textfeld({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Positioned(
      left: screenWidth * 0.1,
      right: screenWidth * 0.1,
      top: screenHeight * 0.65,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(color: Colors.black.withAlpha(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Text(
                    "Feeling Snackish today?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Explore Angi's most popular snack selection and get instantly happy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 13,

                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Button(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
