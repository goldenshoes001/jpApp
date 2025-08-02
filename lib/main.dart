import 'package:flutter/material.dart';
import 'package:jp_app/cummon/imagepaths.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                image: AssetImage(
                  imagePaths
                      .where(
                        (element) => element.contains("bg_startscreen.png"),
                      )
                      .first,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
