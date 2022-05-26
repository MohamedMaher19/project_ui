import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, required this.onPressed, this.color, this.textColor}) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color? color;
  final Color? textColor;
  //blackWordColor
//Color(0xff4184CE)
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),),
          primary:color,
          minimumSize: Size(150, 40),
        ),
        onPressed: onPressed,
        child: TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ));
  }
}
