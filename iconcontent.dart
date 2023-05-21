import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'constants.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData logo;
  final String label;

  IconContent({this.logo, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          logo,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}
