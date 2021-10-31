import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/internal/app_module.dart';
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
        initialRoute: Routes.WELCOME,
        defaultTransition: Transition.fade,
        unknownRoute: AppPages.pages[0],
        getPages: AppPages.pages,
    );
    }
  }