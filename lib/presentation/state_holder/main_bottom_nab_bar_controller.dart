import 'package:get/get_state_manager/get_state_manager.dart';

class MainBottomNabBarController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
    update();
  }
  void backToHome(){
    changeIndex(0);
  }
}
