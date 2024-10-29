import 'package:flutter_game/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  int get currentIndex => selectedIndex.value;

  @override
  void onInit() {
    super.onInit();
  }

  List screen = const [
    HomeView(),
  ];

  void changeIndex(int index) {
    if(selectedIndex.value == index) {
     return;
    }

    selectedIndex.value = index;
  }

  void backHome(){
    changeIndex(0);
  }

}
