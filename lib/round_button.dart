
import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {


  final Function onPressed ;
  final IconData icon;
  RoundIconButton({super.key, required this.icon,  required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        onPressed();
      },
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child:  Icon(icon),
    );
  }
}