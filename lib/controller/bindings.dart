import 'package:get/get.dart';
import 'package:treadly1/controller/auth_controller.dart';
import 'package:treadly1/controller/home_controller.dart';
import 'package:treadly1/controller/intro_controller.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<HomeController>(HomeController());
    Get.put<IntroController>(IntroController());
  }


}