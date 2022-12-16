import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.yellow,
        foregroundColor: Colors.pink,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
       colorSchemeSeed: Colors.yellow, 
       textTheme:const TextTheme(bodyText2: TextStyle(color: Colors.white))
      ),
      home: const InputPage(),
    );
  }
}
