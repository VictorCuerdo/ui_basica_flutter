import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/productos_page_body.dart';

import '../utils/colors.dart';
import '../widgets/texto_grande.dart';
import '../widgets/texto_pequeno.dart';

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
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              TextoPequeno(
                                text: "Carrera 30#69B-144",
                                size: 15,
                                color: Colors.black54,
                              ),
                              Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )
                        ],
                      ),
                      Center(
                          child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.search, color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor,
                        ),
                      ))
                    ],
                  ))),
          ProductosPageBody(),
        ],
      ),
    );
  }
}
