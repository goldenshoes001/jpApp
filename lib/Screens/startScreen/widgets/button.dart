import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final List<Color> gradientColors;
  final double radius;
  final Color textColor;
  final double padding;
  final double blurRadius;
  final Color boxShadowColor = const Color(0x7EEA71C5);
  final double fontSize;
  final FontWeight fontWeight;
  final List<Color> shimmerColors;

  final double offset;
  final double offset2;
  const Button({
    super.key,
    this.text = "Order Now",
    this.onPressed,
    this.width = 200,
    this.height = 45.0,
    this.gradientColors = const [Color(0xFFE970C4), Color(0xFFF69EA3)],
    this.radius = 10.0,
    this.textColor = Colors.white,
    this.padding = 1.0,
    this.offset = 0.0,
    this.offset2 = 1.0,
    this.blurRadius = 90.0,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.w600,
    this.shimmerColors = const [
      Color.fromRGBO(254, 200, 241, 0.8),
      Color.fromRGBO(237, 146, 215, 0),
      Color.fromRGBO(237, 146, 215, 0),
      Color.fromRGBO(237, 146, 215, 0),
    ],
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(
          left: padding,
          bottom: padding,
          right: padding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              offset: Offset(offset, offset2),
              blurRadius: blurRadius,
              color: boxShadowColor,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradientColors,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: gradientColors,
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              // Overlay für den Glanz-Effekt
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: shimmerColors,
                      stops: [0.01, 0.22, 0.5, 1],
                    ),
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
