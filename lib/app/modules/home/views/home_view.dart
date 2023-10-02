import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';
import 'package:kilindar_merchant_app/app/modules/home/views/chart.dart';
import 'package:kilindar_merchant_app/app/modules/home/views/circularContainerReusable.dart';
import 'package:kilindar_merchant_app/app/modules/home/views/containerReusable.dart';

import 'package:kilindar_merchant_app/app/modules/home/views/dropDownButton.dart';
import 'package:kilindar_merchant_app/app/modules/login/views/login_view.dart';

import '../../../reusable_widget.dart/reusable_textformfield.dart';
import '../controllers/home_controller.dart';

List title = [
  "120",
  "12,034",
  "12",
  "12",
];
List DashboardIcons = [
  "assets/icons/ticket.svg",
  "assets/icons/bag.svg",
  "assets/icons/routes.svg",
  "assets/icons/organization.svg",
];
List subtitle = [
  "Total Ticket Sales",
  "Total Income",
  "Total Routes",
  "Total Organization",
];

List days = [
  "D",
  "W",
  "M",
  "Y",
];
var _selectedDate = "".obs;
var tappedIndex = 0.obs;

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Dashboard",
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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Dimension.hight10 * 10.6,
                width: Dimension.width10 * 35.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xff072D5F),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimension.hight10 * 4.8,
                        width: Dimension.width10 * 4.8,
                        child: CircleAvatar(
                          child: SvgPicture.asset(
                              "assets/icons/total_revenue.svg"),
                        ),
                      ),
                      SizedBox(
                        width: Dimension.width10 * 1.8,
                      ),
                      Column(
                        children: [
                          Text(
                            "TOTAL REVENUE",
                            style: headingStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xffCCCCCC)),
                          ),
                          SizedBox(
                            height: Dimension.hight10 * 0.8,
                          ),
                          Text(
                            " रु‎ 21,435",
                            style: headingStyle2.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimension.hight10 * 1.6,
              ),
              // ContainerReusable(),
              // GridView.builder(itemCount: title.length,gridDelegate: , itemBuilder: (BuildContext context, index) => ContainerReusableHome(icon: DashboardIcons[index], title: title[index], subtitle: subtitle[index])),),
              Container(
                height: Dimension.hight10 * 18,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2,
                  ),
                  itemCount: title.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return ContainerReusableHome(
                        icon: DashboardIcons[index],
                        title: title[index],
                        subtitle: subtitle[index]);
                  },
                ),
              ),
              DropDownButtonReusable(),
              // SizedBox(
              //   height: Dimension.hight10 * 1.6,
              // ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cash Flow",
                        style: headingStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff8E8E8E),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "32,123",
                            style: headingStyle2.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: Color(0xff323232),
                            ),
                          ),
                          SizedBox(
                            width: Dimension.width10 * 1.5,
                          ),
                          Text(
                            "+12%",
                            style: headingStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff12B76A),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Dimension.width10 * 3.3,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: Dimension.hight10 * 4,
                            width: Dimension.width10 * 18.4,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: days.length,
                              itemBuilder: (BuildContext context, index) =>
                                  GestureDetector(
                                onTap: () {
                                  tappedIndex.value = index;
                                },
                                child: Obx(
                                  () => CircularContainerReusable(
                                    days: days[index],
                                    isClicked: tappedIndex.value == index
                                        ? true
                                        : false,
                                  ),
                                  
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.hight10,
                      ),
                      // DatePickerExample(),
                      GestureDetector(
                        onTap: () async {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  //which date will display when user open the picker
                                  firstDate: DateTime(1950),
                                  //what will be the previous supported year in picker
                                  lastDate: DateTime(
                                      2050)) //what will be the up to supported date in picker
                              .then((pickedDate) {
                            //then usually do the future job
                            if (pickedDate == null) {
                              //if user tap cancel then this function will stop
                              return;
                            }
                            // Format the picked date to "yyyy-MM-dd" format
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            // Store the formatted date in _selectedDate
                            _selectedDate.value = formattedDate;
                          });
                        },
                        child: Obx(
                          () => Container(
                            height: Dimension.hight10 * 4,
                            width: Dimension.width10 * 18.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xffD0D5DD),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.calendar_today),
                                SizedBox(
                                  width: Dimension.width10 * 1.6,
                                ),
                                Text(_selectedDate.value)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Chart(),
            ],
          ),
        ),
      ),
    );
  }
}
