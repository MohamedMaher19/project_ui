import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/utils/themes.dart';

class unSelectedBigRadio extends StatelessWidget {
  const unSelectedBigRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey, width: 1.5),
        borderRadius: const BorderRadius.all(
          const Radius.circular(50.0),
        ),
//      color: Colors.white,
      ),
    );
  }
}

Widget unSelectedBigRadio1(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.grey, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(50.0),
      ),
    ),
    child: Container(
      margin: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        color: offWhite,
              borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      ),
    ),
  );
}

Widget selectedBigRadio(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.grey, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(50.0),
      ),
    ),
    child: Container(
      margin: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6fd3de),
              Color(0xff486ac7),
            ]
        ),        borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      ),
    ),
  );
}




Widget unSelectedRadio(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    height: 18,
    width: 18,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.grey, width: 1.5),
      borderRadius: const BorderRadius.all(
        const Radius.circular(50.0),
      ),
//      color: Colors.white,
    ),
  );
}

Widget selectedRadio(){
  return Container(
    height: 18,
    width: 18,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.grey, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(50.0),
      ),
    ),
    child: Container(
      margin: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6fd3de),
              Color(0xff486ac7),
            ]
        ),        borderRadius: const BorderRadius.all(
        Radius.circular(50.0),
      ),
      ),
    ),
  );
}
Widget selectedRadioWhite(){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: Colors.grey, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(50.0),
      ),
    ),
    child: Container(
      margin: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6fd3de),
              Color(0xff486ac7),
            ]
        ),        borderRadius: BorderRadius.all(
        const Radius.circular(50.0),
      ),
      ),
    ),
  );
}

Widget unSelectedRadioWhite(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
          color: Colors.grey, width: 1.5),
      borderRadius: const BorderRadius.all(
        const Radius.circular(50.0),
      ),
//      color: Colors.white,
    ),
  );
}