import 'package:flutter/material.dart';
import 'package:jp_app/cummon/imagepaths.dart';

class Showcupkake extends StatelessWidget {
  const Showcupkake({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MediaQuery.of(context).size.width * -0.32,
      top: MediaQuery.of(context).size.width * 0.26,
      child: Image(
        image: AssetImage(
          imagePaths.firstWhere((element) => element.contains("cupcake")),
        ),
        width: MediaQuery.of(context).size.width * 1.385,
        height: MediaQuery.of(context).size.width * 1.385,
        fit: BoxFit.cover,
      ),
    );
  }
}
