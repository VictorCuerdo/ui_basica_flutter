import 'package:flutter/cupertino.dart';

class ProductosPageBody extends StatefulWidget {
  const ProductosPageBody({super.key});

  @override
  _ProductosPageBodyState createState() => _ProductosPageBodyState();
}

class _ProductosPageBodyState extends State<ProductosPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: DecorationImage(
                image: AssetImage("assets/image/leche01.jpeg"))));
  }
}
