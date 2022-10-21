import 'package:flutter/cupertino.dart';

class TextoPequeno extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextoPequeno(
      {super.key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 9,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto', color: color, fontSize: size, height: height),
    );
  }
}
