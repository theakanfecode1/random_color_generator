import 'package:flutter/material.dart';
import 'package:random_color_generator/screens/color_generator_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Generator',
      theme: ThemeData(
        fontFamily: ('Poppins'),
        primarySwatch: Colors.blue,
      ),
      home: ColorGeneratorScreen(),
    );
  }
}
