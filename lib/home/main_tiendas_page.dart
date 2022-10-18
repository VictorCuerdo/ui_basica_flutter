import 'package:flutter/material.dart';

class MainTiendasPage extends StatefulWidget {
  const MainTiendasPage({Key? key}) : super(key: key);

  @override
  _MainTiendasPageState createState() => _MainTiendasPageState();
}

class _MainTiendasPageState extends State<MainTiendasPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            child: Row(
      children: [
        Column(
          children: [Text("Ciudad"), Text("Dirección")],
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
          ),
        )
      ],
    )));
  }
}
