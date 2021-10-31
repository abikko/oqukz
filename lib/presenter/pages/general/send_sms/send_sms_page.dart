import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';
import 'package:oqukz/presenter/widgets/text_field/oqu_text_field.dart';

import 'send_sms_controller.dart';

class SendSmsPage extends GetView<SendSmsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Отправить СМС код')),
        body: SafeArea(
          child: Container(
            height: double.maxFinite,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Привет!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 8.0),
                Text('Авторизуйтесь при помощи своего номера телефона!',
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(height: 12.0),
                OquTextField(controller: TextEditingController(), hintText: 'Номер телефона'),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.VERIFY_SMS_CODE),
                        child: Text('Продолжить'),
                      ),
                      const SizedBox(height: 12.0),
                      const Text(
                          'Нажимая подтвердить вы соглашаетесь с условиями использования'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
