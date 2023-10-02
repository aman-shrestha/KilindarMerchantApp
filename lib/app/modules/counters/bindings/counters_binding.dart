import 'package:get/get.dart';

import '../controllers/counters_controller.dart';

class CountersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountersController>(
      () => CountersController(),
    );
  }
}
