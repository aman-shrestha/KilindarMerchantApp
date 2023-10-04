import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchantQuota.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchant_credits.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/detailContainer.dart';

import '../../../constant/styles.dart';
import '../../../reusable_widget.dart/add_substract_reusable.dart';
import '../../../reusable_widget.dart/switch_reusable.dart';
import 'merchant_card_reusable.dart';

class MerchantDetails extends StatelessWidget {
  final String title;
  final String no;
  List location = [
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
  ];
  MerchantDetails({super.key, required this.title, required this.no});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Merchant Details",
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
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailContainerReusable(title: title, no: no),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: Dimension.width10 * 17.2,
                        height: Dimension.hight10 * 4,
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
                            SvgPicture.asset("assets/icons/block.svg"),
                            SizedBox(
                              width: Dimension.width10 * 0.8,
                            ),
                            Text(
                              "Block",
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffC1230D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: Dimension.width10 * 17.2,
                        height: Dimension.hight10 * 4,
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
                            SvgPicture.asset("assets/icons/revoke.svg"),
                            SizedBox(
                              width: Dimension.width10 * 0.8,
                            ),
                            Text(
                              "Revoke Cash",
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffC1230D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(MerchantCredits());
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
                        "Credits",
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
                  height: Dimension.hight10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(MerchantQuota());
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
                        "Quota",
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
                  height: Dimension.hight10 * 2.8,
                ),
                Text(
                  "COMISSION",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff808080),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.2,
                ),
                AddSubstractReusable(),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ALL ROUTES",
                      style: headingStyle2.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff808080),
                      ),
                    ),
                    SwitchReusable(),
                  ],
                ),
                Container(
                  height: Dimension.hight10 * 20,
                  child: ListView.builder(
                    itemCount: location.length,
                    itemBuilder: (BuildContext context, index) =>
                        MerchantCardReusable(location: location[index]),
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
