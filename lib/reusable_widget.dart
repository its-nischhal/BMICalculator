import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {

  ReusableWidget({required this.colour,required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){onPress();},
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: cardChild,
        ),
      ),);
  }
}