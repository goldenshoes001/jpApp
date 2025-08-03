import 'package:flutter/material.dart';
import 'package:jp_app/cummon/imagepaths.dart';

class SetBackground extends StatelessWidget {
  const SetBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // Wrapped your Stack in the body of the Scaffold
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imagePaths.firstWhere(
                  (element) => element.contains("startscreen"),
                ),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
