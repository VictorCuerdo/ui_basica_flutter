import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/texto_grande.dart';

class MainTiendasPage extends StatefulWidget {
  const MainTiendasPage({Key? key}) : super(key: key);

  @override
  _MainTiendasPageState createState() => _MainTiendasPageState();
}

class _MainTiendasPageState extends State<MainTiendasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
                  margin: EdgeInsets.only(top: 45, bottom: 15),
                  padding: EdgeInsets.only(left: 100, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TextoGrande(
                            text: "Barranquilla",
                            color: AppColors.mainColor,
                          ),
                          Text("Dirección")
                        ],
                      ),
                      Center(
                          child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search, color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor,
                        ),
                      ))
                    ],
                  )))
        ],
      ),
    );
  }
}
