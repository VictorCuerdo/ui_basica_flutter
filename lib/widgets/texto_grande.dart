import 'package:flutter/cupertino.dart';

class TextoGrande extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  TextoGrande(
      {super.key,
      this.color,
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto', color: color, fontWeight: FontWeight.w400),
    );
  }
}
