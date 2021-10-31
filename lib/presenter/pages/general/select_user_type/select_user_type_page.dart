import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';

import 'select_user_type_controller.dart';

class SelectUserTypePage extends GetView<SelectUserTypeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Выберите тип пользователя')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Get.offNamedUntil(Routes.STUDENT_HOME,(route) => false),
                  child: Text('Студент')),
              const SizedBox(height: 12.0),
              ElevatedButton(
                  onPressed: () => Get.offNamedUntil(Routes.TUTOR_HOME,(route) => false),
                  child: Text('Преподаватель')),
            ],
          ),
        ));
  }
}
