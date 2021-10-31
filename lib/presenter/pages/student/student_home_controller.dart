import 'package:get/get.dart';
import 'package:oqukz/presenter/widgets/home/home_bottom_item.dart';

class StudentHomeController extends GetxController {
  final _currentScreenIndex = 0.obs;
  final _currentTitle = 'Репетиторы'.obs;
  get currentScreenIndex => _currentScreenIndex.value;
  get currentTitle => _currentTitle.value;
  void updateScreen(HomeBottomItem item, int index){
    _currentScreenIndex.value = index;
    _currentTitle.value = item.title;
  }
  
}