import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;

  @override
  void onClose() {
    super.onClose();
  }

  void navigateToScan() {
    Get.toNamed(Routes.SCAN); // Navigate to ScanView
  }

}
