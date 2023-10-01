import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/colors.dart';
import '../../../constant/dimension.dart';
import '../../../constant/styles.dart';

class BusListListViewBuilder extends StatelessWidget {
  BusListListViewBuilder({super.key});
  int items = 5;
  List buslist_headingcontent = [
    "Samparka bus sewa and Deluxe sewa ",
    "Samparka bus sewa",
    "Samparka bus sewa",
  ];
  List buslist_subheading = [
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
    "Kathmandu, Nepal",
  ];
  List buslist_merchants = [
    "6 Merchants",
    "6 Merchants",
    "6 Merchants",
  ];
  List buslist_location = [
    "Kathmandu ...... pipra",
    "Kathmandu ...... pipra",
    "Kathmandu ...... pipra",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: buslist_headingcontent.length,
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
                            buslist_headingcontent[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: headingStyle2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            buslist_subheading[index],
                            style: headingStyle2.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            buslist_merchants[index],
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
                Text(buslist_location[index]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
