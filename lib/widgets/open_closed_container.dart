import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/routes/routes.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/confirm_cancel_button/cacel_button.dart';
import 'package:project/widgets/confirm_cancel_button/confirm_cancel_button.dart';
import 'package:project/widgets/custom_Button.dart';
import 'package:project/widgets/custom_container.dart';
import 'package:project/widgets/custom_text.dart';
import 'package:project/widgets/date_time_picker/date_time.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/widgets/form_field/custom_foem_field.dart';
import 'radio_button/custom_radio_button.dart';
import 'text_form/text_form.dart';
import 'top_container.dart';

class OpendCloseContainer extends StatefulWidget {
  OpendCloseContainer({Key? key}) : super(key: key);

  final items = ['STC PYA', 'STC PYA', 'STC PYA'];

  @override
  State<OpendCloseContainer> createState() => _OpendCloseContainerState();
}

class _OpendCloseContainerState extends State<OpendCloseContainer> {
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
                        padding: const EdgeInsets.only(right: 6, top: 10),
                        child: Row(textDirection: TextDirection.rtl, children: [
                          TextUtils(
                              text: 'تحويل بنكي مباشر إلي المعلن',
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
                            unSelectedBigRadio1(),
                            const SizedBox(
                              width: 15,
                            ),
                            TextUtils(
                                text: 'مصارف وبنوك',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: wordsColor),
                            const SizedBox(
                              width: 40,
                            ),
                            selectedBigRadio(),
                            const SizedBox(
                              width: 15,
                            ),
                            TextUtils(
                                text: 'حسابات رقمية',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: wordsColor),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all( 10.0),
                        child: Container(


                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("اسم قناة الدفع",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "AbrilFatface-Regular",
                                      color: wordsColor)),
                             const Spacer(),
                             Container(
                               padding: const EdgeInsets.only(top: 5),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12.0),

                                 border: const Border(top: BorderSide(color:wordsColor, width: 1,),right: BorderSide(color:wordsColor, width: 1,),bottom: BorderSide(color:wordsColor, width: 1,),left: BorderSide(color:wordsColor, width: 1,)),),
                               height: 50,
                               width: 175,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: DropdownButton<String>(
                                     items: const [
                                     DropdownMenuItem(value: 'STC PYA',child: Text('STC PYA') ,),
                                     DropdownMenuItem(value: 'STC PYA',child: Text('STC PYA') ,),
                                     DropdownMenuItem(value: 'STC PYA',child: Text('STC PYA') ,),
                                     DropdownMenuItem(value: 'STC PYA',child: Text('STC PYA') ,),
                                 ],
                                     hint:const Text('STC PYA') ,
                                     iconSize: 30,
                                     underline:Container() ,
                                     iconEnabledColor: Colors.blue,
                                     borderRadius: BorderRadius.circular(10.0),
                                     isExpanded: true,
                                     onChanged: (val){}),
                               ),
                             ),
                              const SizedBox(
                                width: 1,
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          textDirection: TextDirection.ltr,
                          children: [
                            DateTimePicker(),
                            const SizedBox(
                              width: 60,
                            ),
                            const Text("تاريخ التحويل",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AbrilFatface-Regular",
                                    color: wordsColor)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            const SizedBox(
                              width: 2,
                            ),
                            const Text("صورة التحويل",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AbrilFatface-Regular",
                                    color: wordsColor)),
                            const SizedBox(
                              width: 63,
                            ),
                            InkWell(
                              onTap: () async {
                                await picPhoto(context);
                              },
                              child: TextFields(
                                  fillColor: const Color(0xffF5F5F5),
                                  enabled: false,
                                  textAlignment: TextAlign.center,
                                  obscureText: false,
                                  hintText: "إضافة الصورة",
                                  hintColor: const Color(0xff041D67),
                                  suffix: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      width: 50,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.attach_file_outlined,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.add_circle_outline,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  width: 55),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          child: Row(
                            children: [
                              SizedBox(
                                child: Stack(children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'assets/images/Rectangle 14915.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 80,
                                    bottom: 79,
                                    child: InkWell(
                                        onTap: () {
                                          print('---------');
                                        },
                                        child: CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                            'assets/images/delete.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                              SizedBox(
                                child: Stack(children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'assets/images/Rectangle 14915.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 80,
                                    bottom: 79,
                                    child: InkWell(
                                        onTap: () {
                                          print('---------');
                                        },
                                        child: CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                            'assets/images/delete.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                        )),
                                  )
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 8, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 130,
                                height: 40,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("إضافة ملحوظة",
                                        style: TextStyle(
                                            fontSize: 16,
                                            decoration: TextDecoration.underline,
                                            color: whiteColor))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),

                      const SizedBox(
                        width: 320,
                          child: CustomSearchBar()
                      ),
                      const SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              DeleteButton(

                                text: 'لم يصل التحويل',
                                width: 150,
                                onPressed: ()  {},
                                backgroundColor: grayColor,
                                textColor: redColor.withOpacity(0.3),
                              ),
                              ConfirmButton(
                                  text: 'تم الاستلام',
                                  width: 150,
                                  onPressed: () {},
                                  textColor: greenColor,
                                  backgroundColor:
                                  yellColor),
                            ],
                          ),
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
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              onPressed: () {  },
                              text: 'رجوع',),
                            const SizedBox(width: 15,),
                            CustomButton(
                              color:grreyColor,
                              onPressed: () {  },
                              text: 'ارسال التحويل',),
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
                            )),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> picPhoto(BuildContext context) {
    ImagePicker _imagePicker = ImagePicker();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "اختر مصدر",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () async {
                      _imagePicker
                          .pickImage(
                              source: ImageSource.gallery,
                              imageQuality: 60,
                              maxWidth: 1280,
                              maxHeight: 720)
                          .then((file) {});
                      Navigator.pop(context);
                    },
                    title: const Text("المعرض"),
                    leading: const Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () async {
                      _imagePicker
                          .pickImage(
                              source: ImageSource.camera,
                              imageQuality: 60,
                              maxWidth: 1280,
                              maxHeight: 720)
                          .then((file) {});
                      Navigator.pop(context);
                    },
                    title: const Text("كاميرا"),
                    leading: const Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
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
