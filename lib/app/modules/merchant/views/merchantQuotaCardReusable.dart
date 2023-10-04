import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchantUpdateQuota.dart';

class MerchantQuotaCardReusable extends StatelessWidget {
  final String title;
  final String bookingTime;
  final String salesLimit;
  final String bookingLimit;
  MerchantQuotaCardReusable(
      {super.key,
      required this.title,
      required this.bookingTime,
      required this.salesLimit,
      required this.bookingLimit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.hight10 * 18.8,
      width: Dimension.width10 * 35.1,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: headingStyle2.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff444444),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/clock.svg"),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Booking Time: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    bookingTime,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/chair.svg"),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Sales Limit: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    salesLimit,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/chair.svg"),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Booking Limit: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    bookingLimit,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Dimension.hight10 * 4,
                    width: Dimension.width10 * 15.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Color(0xffFEF2F1),
                      border: Border.all(
                        color: Color(0xffFCD5CF),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/trash.svg"),
                        Text(
                          "Delete",
                          style: headingStyle2.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffC1230D),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(MerchantUpdateQuota());
                    },
                    child: Container(
                      height: Dimension.hight10 * 4,
                      width: Dimension.width10 * 15.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xffF4F7FB),
                        border: Border.all(
                          color: Color(0xffDBE3F0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/update.svg"),
                          Text(
                            "Update quota",
                            style: headingStyle2.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff072D5F),
                            ),
                          )
                        ],
                      ),
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
