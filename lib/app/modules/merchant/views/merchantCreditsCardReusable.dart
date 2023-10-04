import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

class MerchantCreditsCardReusable extends StatelessWidget {
  final String creditedAmount;
  final String remainingBalance;
  final String remarks;
  MerchantCreditsCardReusable(
      {super.key,
      required this.creditedAmount,
      required this.remainingBalance,
      required this.remarks});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.hight10 * 10.4,
      width: Dimension.width10 * 35.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/rs.svg",
                    height: Dimension.hight10 * 2,
                    width: Dimension.width10 * 2,
                  ),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Credited Amount: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    creditedAmount,
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
                  SvgPicture.asset(
                    "assets/icons/bag.svg",
                    height: Dimension.hight10 * 2,
                    width: Dimension.width10 * 2,
                  ),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Remaining Balance: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    remainingBalance,
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
                  SvgPicture.asset(
                    "assets/icons/remarks.svg",
                    height: Dimension.hight10 * 2,
                    width: Dimension.width10 * 2,
                  ),
                  SizedBox(
                    width: Dimension.width10 * 0.8,
                  ),
                  Text(
                    "Remarks: ",
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    remarks,
                    style: headingStyle2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff333333),
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
