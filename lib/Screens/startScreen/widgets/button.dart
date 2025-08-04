import 'package:flutter/material.dart';
import 'package:jp_app/theme/theme.dart' as theme;

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
    this.text = theme.text,
    this.onPressed,
    this.width = theme.width,
    this.height = theme.height,
    this.gradientColors = theme.gradientColors,
    this.radius = theme.radius,
    this.textColor = theme.textColor,
    this.padding = theme.padding,
    this.offset = theme.offset,
    this.offset2 = theme.offset2,
    this.blurRadius = theme.blurRadius,
    this.fontSize = theme.fontSize,
    this.fontWeight = theme.fontWeight,
    this.shimmerColors = theme.shimmerColors,
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
