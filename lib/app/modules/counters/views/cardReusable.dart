import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

class CardReusable extends StatelessWidget {
  final String title;
  final String subtitle;
  final String button1;
  final String button2;
  final String button1Icon;
  final String button2Icon;

  CardReusable(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.button1,
      required this.button2,
      required this.button1Icon,
      required this.button2Icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.width10 * 35.1,
      height: Dimension.hight10 * 12.4,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: headingStyle2.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff444444),
                ),
              ),
              SizedBox(
                height: Dimension.hight10 * 0.4,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/phone.svg"),
                  SizedBox(
                    width: Dimension.width10 * 0.6,
                  ),
                  Text(
                    subtitle,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimension.hight10 * 1.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Dimension.width10 * 15.7,
                    height: Dimension.hight10 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffFEF2F1),
                      border: Border.all(
                        color: Color(0xffFCD5CF),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(button1Icon),
                        SizedBox(
                          width: Dimension.hight10 * 0.8,
                        ),
                        Text(
                          button1,
                          style: headingStyle2.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffC1230D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Dimension.width10 * 15.7,
                    height: Dimension.hight10 * 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffF4F7FB),
                      border: Border.all(
                        color: Color(0xffDBE3F0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(button2Icon),
                        SizedBox(
                          width: Dimension.hight10 * 0.8,
                        ),
                        Text(
                          button2,
                          style: headingStyle2.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff072D5F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
