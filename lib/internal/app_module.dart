import 'package:get/get.dart';
import 'package:oqukz/presenter/pages/student/student_home_controller.dart';

initAppModule() async {
  Get.lazyPut(() => StudentHomeController());
}