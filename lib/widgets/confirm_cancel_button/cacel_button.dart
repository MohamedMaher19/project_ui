import 'package:flutter/material.dart';
import 'package:project/utils/themes.dart';

class DeleteButton extends StatelessWidget {

  final String text;

  final Color? backgroundColor,textColor;
  final void Function()? onPressed;
  final double? width,height;
  DeleteButton({this.height,this.width,this.textColor,this.backgroundColor,required this.text,required this.onPressed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height??47,
      margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
      width:width ==null?237:width,
      alignment: Alignment.topCenter,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: backgroundColor==null?blueAccentColor:backgroundColor,
          boxShadow: [
            BoxShadow(
              color:buttonGreyShadowColor.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 6,
              offset:const Offset(0, 3),
            )
          ]
        //gradient: LinearGradient(begin:Alignment.topCenter ,end:Alignment.bottomCenter , colors:const [AppColors.firstBrownColor,AppColors.secondBrownColor])
      ),

      child: Row(
        children: [
          TextButton(onPressed:onPressed,style: ButtonStyle(
              shape:MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10),
              ))) ), child: Text( text,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:textColor, fontFamily: 'Arabic-Regular'),),),
          const CircleAvatar(
            backgroundColor:
            Colors.deepOrangeAccent,
            radius: 11,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 9,
              child: Icon(
                Icons.close,
                size: 15,
                color:
                Colors.deepOrangeAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
