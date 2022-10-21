import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widget_iconos_texto.dart';

import '../utils/colors.dart';
import '../widgets/texto_grande.dart';
import '../widgets/texto_pequeno.dart';

class ProductosPageBody extends StatefulWidget {
  const ProductosPageBody({super.key});

  @override
  _ProductosPageBodyState createState() => _ProductosPageBodyState();
}

class _ProductosPageBodyState extends State<ProductosPageBody> {
  PageController pageController = PageController(viewportFraction: 0.65);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
            height: 260,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/manzana01.jpg")))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextoGrande(text: "Manzanas", color: Colors.black45),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: AppColors.mainColor,
                                      size: 15,
                                    ))),
                        SizedBox(
                          width: 10,
                        ),
                        TextoPequeno(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        TextoPequeno(text: "20"),
                        SizedBox(
                          width: 10,
                        ),
                        TextoPequeno(text: "Reseña"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        WidgetIconosTexto(
                            icon: Icons.circle_sharp,
                            text: "Frutas",
                            iconColor: AppColors.iconColor1),
                        WidgetIconosTexto(
                            icon: Icons.location_on,
                            text: "1km",
                            iconColor: AppColors.mainColor),
                        WidgetIconosTexto(
                            icon: Icons.access_time_rounded,
                            text: "45min",
                            iconColor: AppColors.iconColor2)
                      ],
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}
