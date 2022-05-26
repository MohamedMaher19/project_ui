import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/utils/themes.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25, bottom: 10),
        alignment: Alignment.bottomLeft,
        height: 130,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            mainColor,
            // Color(0xff236B73),
            blueColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white.withOpacity(0.4),
          child: IconButton(
            onPressed: () {
              Get.toNamed(Routes.mainScreen);
            },
            icon: const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 32,
                  color: witeColor,
                ),
              ),
            ),
          ),
        ));
  }
}
