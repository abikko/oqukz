import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/internal/app_module.dart';
import 'package:oqukz/presenter/pages/student/student_home_controller.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';

void main() async {
  await initAppModule();
  runApp(const OquApp());
}

class OquApp extends StatelessWidget {
    const OquApp({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialBinding: Bindings
        title: 'Oqu.kz',
        initialRoute: Routes.WELCOME,
        defaultTransition: Transition.cupertino,
        unknownRoute: AppPages.pages[0],
        getPages: AppPages.pages,
    );
    }
  }