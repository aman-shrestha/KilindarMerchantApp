import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchantCreditsCardReusable.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/add_substract_reusable.dart';

import '../../../constant/styles.dart';

class MerchantCredits extends StatelessWidget {
  MerchantCredits({super.key});
  List creditedAmount = [
    "123",
    "223",
    "323",
  ];
  List remainingBalance = [
    "123",
    "223",
    "323",
  ];
  List remarks = [
    "Topup",
    "Topup",
    "Topup",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Credits",
          style: headingStyle2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffB3B3B3),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.fromLTRB(19, 30, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimension.hight10 * 2,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/bag.svg"),
                      Text(
                        "REMAINING BALANCE: ",
                        style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff333333),
                        ),
                      ),
                      Text(
                        "NPR 9993823.00 ",
                        style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff0F7F06),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 2.4,
                ),
                AddSubstractReusable(),
                SizedBox(
                  height: Dimension.hight10 * 1.2,
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(MerchantCredits());
                  },
                  child: Container(
                    height: Dimension.hight10 * 5,
                    width: Dimension.width10 * 35.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Color(0xff072D5F),
                    ),
                    child: Center(
                      child: Text(
                        "Provide Credit",
                        style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 3,
                ),
                Text(
                  "TRANSACTION HISTORY",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff808080),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                Text("CONTENTS TO BE ADDED"),
                SizedBox(
                  height: Dimension.hight10 * 2,
                ),
                Container(
                  height: Dimension.hight10 * 35,
                  child: ListView.builder(
                    itemCount: creditedAmount.length,
                    itemBuilder: (BuildContext context, index) =>
                        MerchantCreditsCardReusable(
                            creditedAmount: creditedAmount[index],
                            remainingBalance: remainingBalance[index],
                            remarks: remarks[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
