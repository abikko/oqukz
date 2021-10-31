import 'package:get/get.dart';
import 'package:oqukz/presenter/pages/general/select_user_type/select_user_type_controller.dart';
import 'package:oqukz/presenter/pages/general/send_sms/send_sms_controller.dart';
import 'package:oqukz/presenter/pages/general/verify_sms/verify_sms_controller.dart';
import 'package:oqukz/presenter/pages/student/student_home_controller.dart';


const String version = String.fromEnvironment('VERSION');
const Version running = version == "lazy" ? Version.lazy : Version.wait;


initAppModule() async {
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
    Get.lazyPut(() => SelectUserTypeController());
    Get.lazyPut(() => VerifySmsController());
    Get.lazyPut(() => SendSmsController());
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
    await Get.putAsync(() async => SelectUserTypeController());
    await Get.putAsync(() async => VerifySmsController());
    await Get.putAsync(() async => SendSmsController());
  }
}
