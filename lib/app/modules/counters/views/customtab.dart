import 'package:flutter/material.dart';
import 'package:kilindar_merchant_app/app/constant/dimension.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/counters.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/merchants.dart';
import 'package:kilindar_merchant_app/app/modules/counters/views/requests.dart';

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Container(
              height: Dimension.hight10 * 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
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
                    text: "Counters",
                  ),
                  Tab(
                    text: "Merchants",
                  ),
                  Tab(
                    text: "Requests",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Counters(),
                Merchants(),
                Request(),
                // MyPostTab(),
                // MyReelsTab(),
                // MyTagTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
