import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/cardReusable.dart';

class Counters extends StatelessWidget {
  Counters({super.key});
  List title = [
    "Om Shanti Counter",
    "Om Shanti Counter",
    "Om Shanti Counter",
    "Om Shanti Counter",
  ];

  List subtitle = [
    "98373734734",
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
                          style: headingStyle2.copyWith(color: Colors.white),
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
              height: Dimension.hight10 * 50,
              child: ListView.builder(
                itemCount: title.length,
                itemBuilder: (BuildContext context, index) => CardReusable(
                    title: title[index],
                    subtitle: subtitle[index],
                    button1: "Block",
                    button2: "View details",
                    button1Icon: "assets/icons/block.svg",
                    button2Icon: "assets/icons/eye.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
