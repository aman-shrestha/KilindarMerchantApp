import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/home/views/dashboard_item.dart';
import 'package:kilindar_merchant_app/app/modules/login/views/login_view.dart';

import '../../../reusable_widget.dart/reusable_textformfield.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  List<String> dashboardItems = [
    "Sales Report",
    "Total Merchants",
    "Total Counters",
    "Total Ticket Sales"
  ];

  List<String> homeImages = [
    "Sales Report",
    "Total Merchants",
    "Total Counters",
    "Total Ticket Sales"
  ];
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(19.0, 28.0, 20.0, 85.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Dashboard",
                      style: headingStyle2.copyWith(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: AppColors.silverheading,
                      ),
                    ),
                    SizedBox(
                      width: Dimension.width10 * 12.1,
                    ),
                    Icon(
                      Icons.notifications,
                    ),
                    SizedBox(
                      width: Dimension.width10 * 1.6,
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimension.hight10 * 2.4,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: dashboardItems.length,
                  itemBuilder: (BuildContext ctx, index) {
                    // return DashboardItem(image: image, title: title, subtitle: subtitle)
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
