import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/custom_Button.dart';
import 'package:project/widgets/custom_container.dart';
import 'package:project/widgets/custom_text.dart';
import 'package:project/widgets/radio_button/custom_radio_button.dart';
import 'package:project/widgets/top_container.dart';

class AcceptRefuseScreen extends StatelessWidget {
  AcceptRefuseScreen({Key? key}) : super(key: key);

  String? payment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 1, top: 0, left: 5, right: 5),
              color: Colors.white70,
              width: double.infinity,
              height:double.infinity,
              child: SingleChildScrollView(
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
                                Get.offNamed(Routes.openClose);
                              },
                            ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils(
                                    text: 'بيانات الدفع',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: wordsColor),
                                TextUtils(
                                    text: '#رقم الطلب  63520',
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color:blackColor ),
                              ],
                            ),
                          ),

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
                                CustomContainer(price: '000000', width: 230, priceColor:cyan1Color)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 10),
                            child: Row(textDirection: TextDirection.rtl, children: [
                              TextUtils(
                                  text: 'مدفوعات الطلب',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: wordsColor),
                              const Spacer(),
                              CustomContainer(
                                priceColor: cyan1Color,
                                price: '5000',
                                width: 80,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset('assets/images/Group 19008.png'),
                              const SizedBox(
                                width: 15,
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                selectedBigRadio(),
                                const SizedBox(
                                  width: 15,
                                ),
                                TextUtils(
                                    text: 'الدفع من محفظة',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: wordsColor),
                                const SizedBox(
                                  width: 40,
                                ),
                                unSelectedBigRadio1(),
                                const SizedBox(
                                  width: 10,
                                ),
                                TextUtils(
                                    text: 'الدفع من حساب',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.withOpacity(.5)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextUtils(text: 'لقد قام العميل .......... بالافراج عن المبلغ أدناه ويمكنك', fontSize: 16, fontWeight: FontWeight.normal, color: blackWordColor),
                              TextUtils(text: 'القبول او الرفض', fontSize: 16, fontWeight: FontWeight.normal, color: blackWordColor),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 1, right: 1, top: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 330,
                                    height: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xff427AD0),
                                            Color(0xff48DBE1)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        )),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        const Text("قيمة الدفع",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: whiteColor)),
                                        const Text("6500 ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: whiteColor)),
                                        const Text("ريال",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: whiteColor)),
                                        Container(
                                          decoration:  BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(7),),
                                          width:55,
                                          height:50 ,
                                          child: Center(child: TextUtils(text: 'قبول', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white)),
                                        ),
                                        Container(
                                          decoration:  BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(7),),
                                          width:55,
                                          height:50 ,
                                          child: Center(child: TextUtils(text: 'رفض', fontSize: 16, fontWeight: FontWeight.normal, color:brown2Color)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 3,),

                          SizedBox(
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  onPressed: () {  },
                                  text: 'استعادة',),
                                const SizedBox(width: 15,),
                                CustomButton(
                                  color:grreyColor,
                                  onPressed: () {  },
                                  text: 'ارسال',),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              Get.offNamed(Routes.mainScreen);
                            },
                            child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        mainColor,
                                        // Color(0xff236B73),
                                        blueColor,
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                    )),
                                child: InkWell(
                                  onTap: (){
                                    Get.offNamed(Routes.mainScreen);

                                  },
                                  child: InkWell(
                                    onTap: (){
                                      Get.offNamed(Routes.secondMain);

                                    },
                                    child: Container(
                                      height: 24,
                                      child: Column(
                                        children: const [
                                          Divider(
                                            height: 13,
                                            thickness: 1,
                                            color: Colors.white,
                                            indent: 120,
                                            endIndent: 120,
                                          ),
                                          Divider(
                                            height: 1,
                                            thickness: 1,
                                            color: Colors.white,
                                            indent: 140,
                                            endIndent: 140,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ),






                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))) ;

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