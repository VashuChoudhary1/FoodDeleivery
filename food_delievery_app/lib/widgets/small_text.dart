import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        //  fontFamily: 'OpenSans',
        fontSize: size,
        color: color,
        height: height,
      ),
    );
  }
}
