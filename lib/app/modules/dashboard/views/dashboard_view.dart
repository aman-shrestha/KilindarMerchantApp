import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kilindar_merchant_app/app/constant/colors.dart';
import 'package:kilindar_merchant_app/app/constant/styles.dart';

import '../../buslist/views/buslist_view.dart';
import '../../home/views/home_view.dart';
import '../../organization/views/organization_view.dart';
import '../../scan/views/scan_view.dart';
import '../../search/views/search_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  var _selectedIndex = 0.obs;

  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    OrganizationView(),
    SearchView(),
    BuslistView(),
    ScanView(),
  ];

  void _onItemTapped(int index) {}

  DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex.value),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex.value,
          selectedItemColor: AppColors.selectedNavColor,
          unselectedItemColor: AppColors.unselectedNavColor,
          selectedLabelStyle: navbuttomstyle,
          unselectedLabelStyle: navbuttomstyle,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_work_outlined),
              label: 'Organization',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Bus List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Scan',
            ),
          ],
          onTap: (index) {
            _selectedIndex.value = index;
          },
        ),
      ),
    );
  }
}
