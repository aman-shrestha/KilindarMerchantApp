import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/modules/organization/views/listviewbuilder.dart';
import 'package:kilindar_merchant_app/app/reusable_widget.dart/search_bar.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';
import '../controllers/organization_controller.dart';

class OrganizationView extends GetView<OrganizationController> {
  const OrganizationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Organization",
                      style: headingStyle2.copyWith(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: AppColors.silverheading,
                      ),
                    ),
                    SizedBox(
                      width: Dimension.width10 * 10.1,
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
              SearchBarReusable(
                  hintext: "Search for organization", icon: Icons.search),
              SizedBox(
                height: Dimension.hight10 * 2.0,
              ),
              Container(
                height: Dimension.hight10 * 4,
                child: Text('contents to be added'),
              ),
              SizedBox(
                height: Dimension.hight10 * 2.0,
              ),
              AllOrganizationListViewBuilder(),
              // AssociatedOrganizationListViewBuilder(),
              // PendingRequestOrganizationListViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
