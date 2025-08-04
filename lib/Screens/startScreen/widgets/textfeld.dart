import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/Screens/startScreen/widgets/button.dart';
import 'package:jp_app/theme/theme.dart' as theme;

class Textfeld extends StatelessWidget {
  const Textfeld({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Positioned(
      left: screenWidth * theme.positionvalueLeftTextField,
      right: screenWidth * theme.positionvalueRightTextField,
      top: screenHeight * theme.positionvalueTopTextField,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(theme.radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: theme.sigmaX, sigmaY: theme.sigmaY),
          child: Container(
            decoration: BoxDecoration(
              color: theme.decorationColorTextField.withAlpha(theme.alphaValue),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: theme.paddingHorizontalTextField,
                vertical: theme.paddingVerticalTextField,
              ),
              child: Column(
                children: [
                  Text(
                    "Feeling Snackish today?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: theme.fontFamily,
                      fontSize: theme.fontSizeTextTextfeld,
                      fontWeight: theme.fontweightTextTextfield,
                      color: theme.textColor,
                    ),
                  ),
                  SizedBox(height: theme.sizedBoxBetweenHeaderAndText),
                  Text(
                    "Explore Angi's most popular snack selection and get instantly happy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: theme.fontFamily,
                      fontSize: theme.fontSizeTextTextfeldToo,

                      color: theme.textColor,
                    ),
                  ),
                  SizedBox(height: theme.sizedBoxBetweenTextAndButton),
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
