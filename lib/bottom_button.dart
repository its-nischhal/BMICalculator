import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function ontap;
  const BottomButton({required this.buttonText , required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        height: 70.0,
        width: double.infinity,
        color: kBottomBarColour,
        margin:const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(buttonText,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
            ),),
        ),

      ),
    );
  }
}

