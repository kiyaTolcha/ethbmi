import 'package:flutter/material.dart';

const iconSize = 75.0;

class IconContent extends StatelessWidget {
  const IconContent({@required this.gender, this.iconGender});
  final gender;
  final iconGender;
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconGender,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 18.0, color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}
