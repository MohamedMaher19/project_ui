import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/custom_Button.dart';
import 'package:project/widgets/custom_card.dart';
import 'package:project/widgets/custom_container.dart';
import 'package:project/widgets/custom_text.dart';
import 'package:project/widgets/top_container.dart';


class PayTransferClient extends StatelessWidget {
  const PayTransferClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopContainer(),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF5F5F5),
                  border: Border.all(color: Colors.grey.withOpacity(0.6))),
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 15),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'خيارات الدفع',
                      onPressed: () {
                        Get.offNamed(Routes.secondMain);
                      },
                    ),
                    SizedBox(
                        child: TextUtils(
                            text: '...................',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff4184CE)))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: witeColor,
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              width: double.infinity,
              height: 200,
            //  context.height
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextUtils(
                      text: 'بيانات الدفع',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: wordsColor),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          customRow(price:'15000' , color:blackWordColor ,priceColor:grayWordColor , text: 'قيمة الطلب', photo: 'assets/images/Group 19021.png' , x: -8 , y: 10.0),
                          const SizedBox(width: 10),
                          customRow(price:'10000' , color:blackWordColor ,priceColor:grayWordColor , text: 'افراج', photo: 'assets/images/Group 19098.png' , x: -12.0 , y: 10.0),
                          const SizedBox(width: 10),
                          customRow(price:'0000' , color:blackWordColor , text: 'تحويل',priceColor:grayWordColor , photo: 'assets/images/Group 19098.png' , x: -12.0 , y: 10.0),
                          const SizedBox(width: 10),
                          customRow(price:'5000' , color:blackWordColor , text: 'معلق',priceColor:brownColor , photo: 'assets/images/Group 19019.png', x: -12.0 , y: 10.0),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15 , left: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        TextUtils(text: 'المكافأت', fontSize:18, fontWeight: FontWeight.normal, color: cyanColor),
                        CustomContainer(price: '000000  /  000000 / 000000', width: 230, priceColor:cyan1Color)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),

            CustomCard(
              onTapCard:(){
                Get.offNamed(Routes.payScreen);
              } ,

              name: 'ادفع الان',
              price: '5000',
            ),
            CustomCard(
              onTapCard:(){
                Get.offNamed(Routes.openClose);
              } ,
              name: 'تحويل مباشر إلي المعلن',
              price: '5000',
            ),
            CustomCard(
              onTapCard:(){
                Get.offNamed(Routes.thirdCard);
              } ,
              name: 'قدم مكافأة',
              price: '0000',
            ),

          ],
        ),
      ),
    );
  }

  Widget customRow({
    required String text,
    required Color color,
    required Color priceColor,
    required String price,
    required String photo,
     double ? x ,
     double ? y ,
  }) {
    return Column(
      children: [
        TextUtils(
            text: text,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: color),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:smallContColor,
                  ),
                  width: 80,
                  height: 40,
                  child: Center(
                      child: TextUtils(
                          text: '$price',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: priceColor)),
                ),
                Positioned(
                  right: x,
                  bottom: y,
                  child: InkWell(
                      onTap: () {
                        print('---------');
                      },
                      child: Image.asset(
                        photo,
                      )),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
