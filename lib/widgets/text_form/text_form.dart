import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/utils/themes.dart';

class TextFields extends StatelessWidget {
  TextFields({this.fillColor,this.enabled,this.suffix,this.onChanged,this.width,this.hintColor,this.fontSize,this.borderColor, required this.textAlignment,required this.obscureText,this.onSaved, this.controller,required this.hintText,this.validator,Key? key}) : super(key: key);

  late final String hintText;
  bool  obscureText= false;
  TextEditingController? controller;
  final void Function(String?)? onSaved;
  String? Function(String?)? validator;
  double? width;
  Color?fillColor;
  bool? enabled;
  Widget? suffix;
  void Function(String)? onChanged;
  double? fontSize;
  Color? borderColor,hintColor;
  TextAlign textAlignment=TextAlign.center ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:180,
      height: 50,
      child: TextFormField(
        obscureText:obscureText,
        style: TextStyle(fontSize: fontSize==null?14 : 15 ),
        textAlign: textAlignment,
        onChanged: onChanged,
        enabled: enabled??true,
        decoration: InputDecoration(
          contentPadding:  const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
          suffixIcon:suffix??const SizedBox(width: 0,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color:borderColor==null?fayrozy: cyan)
          ),
          filled: true,
          disabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color:borderColor==null?fayrozy: cyan)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: borderColor==null?fayrozy: cyan)
          ),
          focusColor: fayrozy,
          fillColor:fillColor??whiteColor,
          hintStyle:const TextStyle(color: greyColor,fontSize: 15),
          hintText: hintText,
        ),
        controller:controller,
        onSaved: onSaved,
        validator: validator,

      ),
    );
  }
}
