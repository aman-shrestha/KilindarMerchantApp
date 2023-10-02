import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/customtab.dart';
import 'package:kilindar_merchant_app/app/modules/home/views/home_view.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';
import '../controllers/counters_controller.dart';

class CountersView extends GetView<CountersController> {
  const CountersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Counters",
          style: headingStyle2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xffB3B3B3),
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
          ),
          SizedBox(
            width: Dimension.width10 * 2.4,
          ),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
          ),
          SizedBox(
            width: Dimension.width10 * 2.0,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: MyCustomTab(),
      ),
    );
  }
}
