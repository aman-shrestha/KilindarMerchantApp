import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/modules/buslist/views/buslist_listviebuilder.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';
import '../../../reusable_widget.dart/search_bar.dart';
import '../controllers/buslist_controller.dart';

class BuslistView extends GetView<BuslistController> {
  const BuslistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(18.0, 28.0, 20.0, 0.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Bus List",
                        style: headingStyle2.copyWith(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: AppColors.silverheading,
                        ),
                      ),
                      SizedBox(
                        width: Dimension.width10 * 16.0,
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
                SearchBarReusable(hintext: "All", icon: Icons.location_on),
                SizedBox(
                  height: Dimension.hight10 * 2.0,
                ),
                Container(
                  height: Dimension.hight10 * 4,
                  child: Text('contents to be added'),
                ),
                Container(
                  height: Dimension.hight10 * 6,
                  child: Text("SWITCH MUST BE ADDED"),
                ),
                BusListListViewBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
