import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:oqukz/data/local/hive_helper.dart';
import 'package:oqukz/data/remote/repository/order/order_repository.dart';
import 'package:oqukz/data/remote/repository/order/order_repository_impl.dart';
import 'package:oqukz/data/remote/repository/user/user_repository_impl.dart';
import 'package:oqukz/presenter/pages/general/select_user_type/select_user_type_controller.dart';
import 'package:oqukz/presenter/pages/general/send_sms/send_sms_controller.dart';
import 'package:oqukz/presenter/pages/general/soon/soon_controller.dart';
import 'package:oqukz/presenter/pages/general/verify_sms/verify_sms_controller.dart';
import 'package:oqukz/presenter/pages/student/create_request/student_create_request_controller.dart';
import 'package:oqukz/presenter/pages/student/student_home_controller.dart';
import 'package:oqukz/presenter/pages/student/tutors/tutor_list_controller.dart';
import 'package:oqukz/presenter/pages/tutor/students/students_list_controller.dart';
import 'package:oqukz/presenter/pages/tutor/tutor_home_controller.dart';


const String version = String.fromEnvironment('VERSION');
const Version running = version == "lazy" ? Version.lazy : Version.wait;


initAppModule() async {

  await Hive.initFlutter();
  await Hive.openBox(HiveHelper.keySettings);
  if (running == Version.lazy) {
    print('running LAZY version');
    LazyBindings().dependencies();
  }

  if (running == Version.wait) {
    print('running AWAIT version');
    await AwaitBindings().dependencies(); // await is key here
  }
}

enum Version{
  lazy,wait
}

class LazyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentHomeController>(() => StudentHomeController());
    Get.lazyPut(() => SelectUserTypeController(UserRepositoryImpl()));
    Get.lazyPut(() => VerifySmsController());
    Get.lazyPut(() => SendSmsController());
    Get.lazyPut(() => TutorListController(UserRepositoryImpl()));
    Get.lazyPut(() => SoonController());
    Get.lazyPut(() => TutorHomeController());
    Get.lazyPut(() => StudentsListController(OrderRepositoryImpl()));
    Get.lazyPut(() => StudentCreateRequestController(OrderRepositoryImpl()));
    for(GetxController controller in controllers){
      Get.lazyPut(() => controller);
    }
  }
}

/// Simulates a slow (2 sec.) init of a data access object.
/// Calling [await] dependencies(), your app will wait until dependencies are loaded.
class AwaitBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync<StudentHomeController>(() async {
      return StudentHomeController();
    });
    await Get.putAsync(() async => SelectUserTypeController(UserRepositoryImpl()));
    await Get.putAsync(() async => VerifySmsController());
    await Get.putAsync(() async => SendSmsController());
    await Get.putAsync(() async => TutorListController(UserRepositoryImpl()));
    await Get.putAsync(() async => TutorHomeController());
    await Get.putAsync(() async => SoonController());
    await Get.putAsync(() async => StudentsListController(OrderRepositoryImpl()));
    await Get.putAsync(() async => StudentCreateRequestController(OrderRepositoryImpl()));
    await for(GetxController controller in controllerss){
      await Get.putAsync(() async => controller);
    }
  }
}

List<GetxController> controllers = [
  StudentsListController(OrderRepositoryImpl()),
  StudentCreateRequestController(OrderRepositoryImpl())
];

Stream<GetxController> controllerss = Stream.fromIterable(controllers);