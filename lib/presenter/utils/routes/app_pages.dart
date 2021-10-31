import 'package:get/get.dart';
import 'package:oqukz/presenter/pages/general/select_user_type/select_user_type_page.dart';
import 'package:oqukz/presenter/pages/general/send_sms/send_sms_page.dart';
import 'package:oqukz/presenter/pages/general/verify_sms/verify_sms_page.dart';
import 'package:oqukz/presenter/pages/general/welcome/welcome_page.dart';
import 'package:oqukz/presenter/pages/student/student_home_page.dart';
part 'routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.WELCOME, page:()=> const WelcomePage(),),
    GetPage(name: Routes.SEND_SMS_CODE, page:()=> SendSmsPage(),),
    GetPage(name: Routes.VERIFY_SMS_CODE, page:()=> VerifySmsPage(),),
    GetPage(name: Routes.SELECT_USER_TYPE, page:()=> SelectUserTypePage(),),
    GetPage(name: Routes.STUDENT_HOME, page:()=> StudentHomePage(),),
  ];
}