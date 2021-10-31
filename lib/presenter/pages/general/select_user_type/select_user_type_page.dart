import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';

import 'select_user_type_controller.dart';

class SelectUserTypePage extends GetView<SelectUserTypeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SelectUserTypePage')),
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(onPressed: () => Get.toNamed(Routes.STUDENT_HOME), child: Text('Студент')),
              const SizedBox(height: 12.0),
              ElevatedButton(onPressed: () => Get.toNamed(Routes.TUTOR_HOME), child: Text('Преподаватель')),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ));
  }
}
