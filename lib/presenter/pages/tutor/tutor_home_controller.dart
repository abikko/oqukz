import 'package:get/get.dart';
import 'package:oqukz/presenter/widgets/home/home_bottom_item.dart';

class TutorHomeController extends GetxController {
  var currentPageIndex = 0.obs;
  var currentTitle = 'Студенты'.obs;

  TutorHomeController();

  void updateScreen(HomeBottomItem item, int index) {
    currentPageIndex.value = index;
    currentTitle.value = item.title;
  }
}
