import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() {
  runApp(const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0A0E21)
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21)
        // scaffoldBackgroundColor: Colors.black
      ),
      routes: {
    'mainpage' : (context)=>const InputPage(),
    'resultPage' : (context) => const ResultPage()
      },

    initialRoute: 'mainpage',
    );
    }
  }




