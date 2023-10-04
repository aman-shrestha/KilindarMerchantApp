import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchant_card_reusable.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchant_details.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/add_substract_reusable.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/switch_reusable.dart';

import '../../../constant/styles.dart';
import '../controllers/merchant_controller.dart';

class MerchantView extends GetView<MerchantController> {
  List location = [
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
  ];
  String title = Get.arguments[0];
  String no = Get.arguments[1];
  MerchantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Merchant Request",
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
                Container(
                  height: Dimension.hight10 * 11.2,
                  width: Dimension.width10 * 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xffF4F4F4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: headingStyle2.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xff072D5F)),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/phone.svg"),
                            SizedBox(
                              width: Dimension.width10 * 1.2,
                            ),
                            Text(
                              no,
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff333333),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/email.svg"),
                            SizedBox(
                              width: Dimension.width10 * 1.2,
                            ),
                            Text(
                              'email',
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff333333),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cash Allowed",
                      style: headingStyle2.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff444444),
                      ),
                    ),
                    SwitchReusable(),
                  ],
                ),
                // SizedBox(
                //   height: Dimension.hight10 * 1.6,
                // ),
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
                GestureDetector(
                  onTap: () {
                    Get.to(MerchantDetails(title: title, no: no));
                  },
                  child: Container(
                    width: Dimension.width10 * 35.1,
                    height: Dimension.hight10 * 5.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Color(0xff072D5F),
                    ),
                    child: Center(
                      child: Text(
                        "Approve",
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
                  height: Dimension.hight10 * 1.2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: Dimension.width10 * 35.1,
                    height: Dimension.hight10 * 5.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xffFEEEEC),
                        border: Border.all(color: Color(0xffF8D5D3))),
                    child: Center(
                      child: Text(
                        "Reject",
                        style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xffB3261E),
                        ),
                      ),
                    ),
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
