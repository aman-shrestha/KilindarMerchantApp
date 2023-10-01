import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

import '../../../constant/colors.dart';

class AllOrganizationListViewBuilder extends StatelessWidget {
  AllOrganizationListViewBuilder({super.key});
  int items = 5;
  List organization_headingcontent = [
    "Samparka bus sewa ",
    "Samparka bus sewa",
    "Samparka bus sewa",
  ];
  List organization_subheading = [
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
  ];
  List organization_merchants = [
    "6 Merchants",
    "6 Merchants",
    "6 Merchants",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: organization_headingcontent.length,
        itemBuilder: (BuildContext context, index) => Card(
          child: Container(
            height: Dimension.hight10 * 18.4,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/icons/bus.svg")),
                      SizedBox(
                        width: Dimension.width10 * 1.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            organization_headingcontent[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: headingStyle2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_subheading[index],
                            style: headingStyle2.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_merchants[index],
                            style: headingStyle2.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: AppColors.homedashboarditem),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 2.4,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  height: Dimension.hight10 * 4.8,
                  width: Dimension.width10 * 31.8,
                  child: TextButton(
                    onPressed: () {
                      // Get.to(() => DashboardView());
                    },
                    child: Text(
                      'Request Join',
                      style: buttonText.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.5,
                          color: AppColors.white),
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

class AssociatedOrganizationListViewBuilder extends StatelessWidget {
  AssociatedOrganizationListViewBuilder({super.key});
  int items = 5;
  List organization_headingcontent = [
    "Samparka bus sewa ",
    "Samparka bus sewa",
    "Samparka bus sewa",
  ];
  List organization_subheading = [
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
  ];
  List organization_merchants = [
    "6 Merchants",
    "6 Merchants",
    "6 Merchants",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: organization_headingcontent.length,
        itemBuilder: (BuildContext context, index) => Card(
          child: Container(
            height: Dimension.hight10 * 18.4,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/icons/bus.svg")),
                      SizedBox(
                        width: Dimension.width10 * 1.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            organization_headingcontent[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: headingStyle2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_subheading[index],
                            style: headingStyle2.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_merchants[index],
                            style: headingStyle2.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: AppColors.homedashboarditem),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 1.6,
                ),
                Expanded(
                  child: Container(
                    height: Dimension.hight10 * 8.5,
                    color: AppColors.lightblue,
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

class PendingRequestOrganizationListViewBuilder extends StatelessWidget {
  PendingRequestOrganizationListViewBuilder({super.key});
  int items = 5;
  List organization_headingcontent = [
    "Samparka bus sewa ",
    "Samparka bus sewa",
    "Samparka bus sewa",
  ];
  List organization_subheading = [
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
  ];
  List organization_merchants = [
    "6 Merchants",
    "6 Merchants",
    "6 Merchants",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: organization_headingcontent.length,
        itemBuilder: (BuildContext context, index) => Card(
          child: Container(
            height: Dimension.hight10 * 18.4,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/icons/bus.svg")),
                      SizedBox(
                        width: Dimension.width10 * 1.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            organization_headingcontent[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: headingStyle2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_subheading[index],
                            style: headingStyle2.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            organization_merchants[index],
                            style: headingStyle2.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: AppColors.homedashboarditem),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimension.hight10 * 2.4,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.redText,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  height: Dimension.hight10 * 4.8,
                  width: Dimension.width10 * 31.8,
                  child: TextButton(
                    onPressed: () {
                      // Get.to(() => DashboardView());
                    },
                    child: Text(
                      'Request Pending',
                      style: buttonText.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.white),
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
