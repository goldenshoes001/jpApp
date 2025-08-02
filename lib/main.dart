import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/grafics/burger.png'),
            Image.asset('assets/grafics/cupake_chick.png'),
            Image.asset('assets/grafics/cupake_cat.png'),
            Image.asset('assets/grafics/icecream_cone.png'),
            Image.asset('assets/grafics/icecream_stick.png'),
            Image.asset('assets/grafics/icecream.png'),
            Image.asset('assets/grafics/star.png'),

            Image.asset('assets/backgrounds/bg_mainscreen.png'),
            Image.asset('assets/backgrounds/bg_startscreen.png'),

            Image.asset('assets/details/cut_card.png'),
            Image.asset('assets/details/snack_snack.png'),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'JP App',
    );
  }
}
