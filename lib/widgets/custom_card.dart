import 'package:flutter/material.dart';
import 'package:project/utils/themes.dart';
import 'package:project/widgets/custom_container.dart';
import 'package:project/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.name,
    required this.price, this.onTapCard, this.onTapBottomCard,
  }) : super(key: key);

  final String name;
  final String price;
  final Function()? onTapCard;
  final Function()? onTapBottomCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1, top: 1, left: 5, right: 5),
      color: Colors.white,
      width: double.infinity,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 3, right: 3, top: 1, bottom: 1),
        child: InkWell(
          onTap:onTapCard ,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      TextUtils(
                          text: name,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: wordsColor),
                      const Spacer(),
                      CustomContainer(
                        priceColor: brownColor,
                        price: price,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/Group 19062.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/images/Group 19008.png'),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                InkWell(
                  onTap: onTapBottomCard,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
