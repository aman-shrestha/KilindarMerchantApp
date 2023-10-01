import 'package:get/get.dart';

import '../controllers/buslist_controller.dart';

class BuslistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuslistController>(
      () => BuslistController(),
    );
  }
}
