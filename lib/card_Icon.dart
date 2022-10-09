import 'package:flutter/material.dart';
import 'constants.dart';
class CardIcon extends StatelessWidget {
  const CardIcon({ required this.iconText,required this.icon});
  final String iconText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size:80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(iconText,
          style: kStyle
        )
      ],
    );
  }
}