import 'package:flutter/material.dart';
import 'package:jp_app/cummon/imagepaths.dart';

class TextUnderImage extends StatelessWidget {
  const TextUnderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MediaQuery.of(context).size.width * 0.001,
      top: MediaQuery.of(context).size.width * 1.13,
      child: Opacity(
        opacity: 0.3,
        child: Image(
          image: AssetImage(
            imagePaths.firstWhere((element) => element.contains("snack")),
          ),
        ),
      ),
    );
  }
}
