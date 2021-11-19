import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';
import 'package:oqukz/presenter/widgets/loading/loading_widget.dart';

import 'select_user_type_controller.dart';

class SelectUserTypePage extends GetView<SelectUserTypeController> {
  const SelectUserTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.createUser();
    return Scaffold(
      appBar: AppBar(title: Text('Выберите тип пользователя')),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? const LoadingWidget()
              : Column(
                mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => Get.offNamedUntil(
                            Routes.STUDENT_HOME, (route) => false),
                        child: Text('Студент')),
                    const SizedBox(height: 12.0),
                    ElevatedButton(
                        onPressed: () => Get.offNamedUntil(
                            Routes.TUTOR_HOME, (route) => false),
                        child: Text('Преподаватель')),
                  ],
                ),
        ),
      ),
    );
  }
}
