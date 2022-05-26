import 'package:flutter/material.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({Key? key, required this.priceColor, required this.price, required this.width}) : super(key: key);

  final Color priceColor;
  final String price;
  final double width ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:smallContColor,
      ),
      width: width,
      height: 40,
      child: Center(
          child: TextUtils(
              text: '$price',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: priceColor)),
    );
  }
}
