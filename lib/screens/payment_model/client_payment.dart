import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/custom_Button.dart';
import 'package:project/widgets/custom_container.dart';
import 'package:project/widgets/custom_text.dart';
import 'package:project/widgets/radio_button/custom_radio_button.dart';
import 'package:project/widgets/top_container.dart';

class PayScreen extends StatelessWidget {
   PayScreen({Key? key}) : super(key: key);

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
                            CustomContainer(price: '000000  /  000000 / 000000', width: 230, priceColor:cyan1Color)
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
                              text: 'ادفع الأن',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: wordsColor),
                          const Spacer(),
                          CustomContainer(
                            priceColor: brownColor,
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
                                text: 'الدفع من محفظتي',
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
                            InkWell(
                              onTap: (){
                                Get.offNamed(Routes.secondWayScreen);

                              },
                              child: TextUtils(
                                  text: 'الدفع من حساباتي',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: wordsColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
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
                                  children: const [

                                    Text("رصيد محفظتي ",
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: whiteColor)),
                                    Text("6500 ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: whiteColor)),
                                    Text("ريال",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: whiteColor)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("ادخل المبلغ الذي تريد دفعه -   ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "AbrilFatface-Regular",
                                    color: wordsColor),
                            ),
                      ],),),

                      const SizedBox(height: 3,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
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
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/making-money@2x.png' , width: 50,height: 50, ),

                                        TextUtils(text: 'ادفع الان', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Column(
                              children: [
                                Container(
                                  height: 65,
                                  width: 120,
                                  child: Card(
                                    elevation: 8,
                                    child: Center(child: TextUtils(text: '5000', fontSize: 20, fontWeight: FontWeight.bold, color:brown2Color)),
                                  ),
                                ),
                                TextUtils(text: 'ريال', fontSize: 15, fontWeight: FontWeight.bold, color: wordsColor)

                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            selectedRadio(),
                            const SizedBox(
                              width: 13,
                            ),
                        const Text("لقد اطلعت وأوافق",
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: wordsColor),),
                            const SizedBox(
                              width: 40,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 280,
                        child: CustomButton(
                          onPressed: () {  },
                          text: 'الغاء',),
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
                          text: price,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: priceColor)),
                ),
                Positioned(
                  right: x,
                  bottom: y,
                  child: InkWell(
                      onTap: () {
                        // print('---------');
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