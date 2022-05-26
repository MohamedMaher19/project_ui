import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/utils/themes.dart';

class ConfirmButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor, textColor;
  final void Function()? onPressed;
  final double? width, height;

  ConfirmButton({
    this.height,
    this.width,
    this.textColor,
    this.backgroundColor,
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 47,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      width: width == null ? 237 : width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: backgroundColor == null
              ? blueAccentColor
              : backgroundColor,
          boxShadow: [
            BoxShadow(
              color:buttonGreyShadowColor.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ]
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontFamily: 'Arabic-Regular'),
            ),
          ),
          const Icon(
            Icons.check_rounded,
            size: 25,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
