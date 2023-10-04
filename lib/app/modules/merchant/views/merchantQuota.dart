import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchantQuotaCardReusable.dart';

import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';

class MerchantQuota extends StatelessWidget {
  MerchantQuota({super.key});
  List title = [
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
    "Kathmandu - Pipra",
  ];
  List bookingTime = [
    "None",
    "None",
    "None",
  ];
  List salesLimit = [
    "21",
    "21",
    "21",
  ];
  List bookingLimit = [
    "10",
    "10",
    "10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Quota",
          style: headingStyle2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffB3B3B3),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(19, 30, 20, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: Dimension.hight10 * 5.2,
                      width: Dimension.width10 * 29.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xff072D5F),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              "Add Counter",
                              style:
                                  headingStyle2.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimension.width10 * 0.8,
                    ),
                    Container(
                      width: Dimension.width10 * 5,
                      height: Dimension.hight10 * 5.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xffD0D5DD),
                        ),
                      ),
                      child: GestureDetector(
                        child: Icon(Icons.search),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimension.hight10 * 2,
                ),
                Container(
                  height: Dimension.hight10 * 55,
                  child: ListView.builder(
                    itemCount: title.length,
                    itemBuilder: (BuildContext context, index) =>
                        MerchantQuotaCardReusable(
                            title: title[index],
                            bookingTime: bookingTime[index],
                            salesLimit: salesLimit[index],
                            bookingLimit: bookingLimit[index]),
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
