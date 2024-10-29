import 'package:flutter_game/app/modules/bottom_nav/controllers/bottom_nav_controller.dart';
import 'package:flutter_game/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class IntBinding extends Bindings{
  @override
  void dependencies () async {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}