import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';

import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Добро пожаловать!')),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Добро пожаловать в Oqu.kz, данное приложение поможет вам найти репетитора или студента.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.SEND_SMS_CODE),
                    child: const Text('Продолжить'))
              ],
            ),
          ),
        ));
  }
}
