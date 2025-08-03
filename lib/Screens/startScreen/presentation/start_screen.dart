import 'package:flutter/material.dart';
import 'package:jp_app/Screens/startScreen/widgets/set_background.dart';
import 'package:jp_app/Screens/startScreen/widgets/show_cupkake.dart';
import 'package:jp_app/Screens/startScreen/widgets/text_under_image.dart';
import 'package:jp_app/Screens/startScreen/widgets/textfeld.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [SetBackground(), Showcupkake(), TextUnderImage(), Textfeld()],
    );
  }
}
