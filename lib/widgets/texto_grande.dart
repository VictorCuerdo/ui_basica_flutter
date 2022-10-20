import 'package:flutter/cupertino.dart';

class TextoGrande extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  TextoGrande(
      {super.key,
      this.color = const Color(0xFF332d2),
      required this.text,
      this.size = 40,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
