import 'package:app_filmes/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(loginService: Get.find()), fenix: true);
  }
}