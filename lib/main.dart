import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/internal/app_module.dart';
import 'package:oqukz/internal/network_module.dart';
import 'package:oqukz/presenter/pages/general/soon/soon_page.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNetworkModule();
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
        initialRoute: Routes.TUTOR_HOME,
        defaultTransition: Transition.cupertino,
        unknownRoute: GetPage(name: Routes.LATER, page:()=> SoonPage()),
        getPages: AppPages.pages,
    );
    }
  }