import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/cardReusable.dart';

import '../../../constant/colors.dart';
import '../../../constant/styles.dart';

class Request extends StatelessWidget {
  Request({super.key});
  List title = [
    "Om Shanti Counter",
    "Om Shanti Counter",
    "Om Shanti Counter",
  ];

  List subtitle = [
    "98373734734",
    "98373734734",
    "98373734734",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimension.hight10 * 1.6,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for Merchant Request",
                hintStyle: headingStyle2.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.silver1),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.silver),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.silver),
                  borderRadius: BorderRadius.circular(22.0),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: AppColors.silver,
                ),
              ),
            ),
            SizedBox(
              height: Dimension.hight10 * 2,
            ),
            Container(
              height: Dimension.hight10 * 50,
              child: ListView.builder(
                itemCount: title.length,
                itemBuilder: (BuildContext context, index) => CardReusable(
                    title: title[index],
                    subtitle: subtitle[index],
                    button1: "Reject",
                    button2: "Take Action",
                    button1Icon: "assets/icons/reject.svg",
                    button2Icon: "assets/icons/eye.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
