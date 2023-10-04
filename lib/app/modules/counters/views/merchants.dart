import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/counters.dart';
import 'package:kilindar_merchant_app/app/modules/merchant/views/merchant_view.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';
import 'cardReusable.dart';
import 'requests.dart';

class Merchants extends StatelessWidget {
  const Merchants({super.key});

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
                hintText: "Search for Merchant ",
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
              height: 600,
              child: DefaultTabController(
                length: 3,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Container(
                      height: Dimension.hight10 * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Color(0xffD0D5DD),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelColor: Colors.black,
                        dividerColor: Colors.blue,
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(
                            text: "ALLOWED",
                          ),
                          Tab(
                            text: "BLOCKED",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        AllowedMerchant(),
                        BlockedMerchant(),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllowedMerchant extends StatelessWidget {
  AllowedMerchant({super.key});
  List title = [
    "Om Shanti Counter 1",
    "Om Shanti Counter 2",
    "Om Shanti Counter 3",
    "Om Shanti Counter 4",
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
      height: Dimension.hight10 * 10,
      child: ListView.builder(
        itemCount: title.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            Get.to(() => MerchantView(),
                arguments: [title[index], subtitle[index]]);
          },
          child: CardReusable(
              title: title[index],
              subtitle: subtitle[index],
              button1: "Block",
              button2: "View details",
              button1Icon: "assets/icons/block.svg",
              button2Icon: "assets/icons/eye.svg"),
        ),
      ),
    );
  }
}

class BlockedMerchant extends StatelessWidget {
  BlockedMerchant({super.key});
  List title = [
    "Om Shanti Counter",
    "Om Shanti Counter",
    "Om Shanti Counter",
    "Om Shanti Counter",
  ];

  List subtitle = [
    "Kalanki, NIC bank side",
    "Kalanki, NIC bank side",
    "Kalanki, NIC bank side",
    "Kalanki, NIC bank side",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: title.length,
        itemBuilder: (BuildContext context, index) => Container(
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
                    title[index],
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
                      SvgPicture.asset("assets/icons/location.svg"),
                      SizedBox(
                        width: Dimension.width10 * 0.6,
                      ),
                      Text(
                        subtitle[index],
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
                          color: Color(0xffF1FEF0),
                          border: Border.all(
                            color: Color(0xffD2FDCE),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/unblock.svg"),
                            SizedBox(
                              width: Dimension.hight10 * 0.8,
                            ),
                            Text(
                              "Unblock",
                              style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff0F7F06),
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
                            SvgPicture.asset("assets/icons/eye.svg"),
                            SizedBox(
                              width: Dimension.hight10 * 0.8,
                            ),
                            Text(
                              "View details",
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
        ),
      ),
    );
  }
}
