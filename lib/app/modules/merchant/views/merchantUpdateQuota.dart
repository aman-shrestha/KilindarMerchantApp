import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchantTextFieldReusable.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/reusable_textformfield.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/small_button.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/switch_reusable.dart';

import '../../../constant/styles.dart';

class MerchantUpdateQuota extends StatelessWidget {
  MerchantUpdateQuota({super.key});
  var light = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Update Quota",
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
                Text(
                  "Sales Limit",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff22244D),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 0.6,
                ),
                MerchantTextFieldReusable(hintext: "41"),
                SizedBox(
                  height: Dimension.hight10 * 1.2,
                ),
                Text(
                  "Booking Limit",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff22244D),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 0.6,
                ),
                MerchantTextFieldReusable(hintext: "41"),
                SizedBox(
                  height: Dimension.hight10 * 1.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Indefinite",
                      style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff444444)),
                    ),
                    Obx(
                      () => Switch(
                          // This bool value toggles the switch.
                          value: light.value,
                          activeColor: Color(0xff072D5F),
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.

                            light.value = value;
                          }),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.hight10 * 0.8,
                ),
                Text(
                  "The ticket reserved by agent will not be released before vehicle departure.",
                  style: headingStyle2.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff667085),
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 2.4,
                ),
                Obx(() => light.value
                    ? Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hours before departure"),
                            SizedBox(
                              height: Dimension.hight10 * 0.6,
                            ),
                            MerchantTextFieldReusable(hintext: "41"),
                            SizedBox(
                              height: Dimension.hight10 * 0.6,
                            ),
                            Text(
                              "Time for an agent to book a ticket until departure of a vehicle.",
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff667085),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: Dimension.hight10 * 15,
                      )),
                SizedBox(
                  height: Dimension.hight10 * 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: ButtonReusable(text: "Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
