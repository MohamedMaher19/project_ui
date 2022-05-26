import 'package:flutter/material.dart';


Widget unSelectedBigCheckBox(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      border: Border.all(
          color: const Color(0xff486ac7), width: 1.5),


      borderRadius: const BorderRadius.all(
        Radius.circular(3.0),
      ),

    ),
  );
}

Widget selectedBigCheckBox(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      border: Border.all(
          color: const Color(0xff486ac7), width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(3.0),
      ),
    ),
    child: const Center(
      child: const Icon(Icons.check,color:const Color(0xff486ac7),size: 20,),
    ),
  );
}
