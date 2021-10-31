import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/utils/routes/app_pages.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'verify_sms_controller.dart';

class VerifySmsPage extends GetView<VerifySmsController> {
  const VerifySmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Проверка СМС-кода')),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Подтвердите код отправленный на номер телефона',
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center),
                const SizedBox(height: 18.0),
                PinCodeTextField(

                  appContext: context,
                  length: 4,
                  textStyle: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
                  enableActiveFill: true,
                  onChanged: (pincode) => {},
                  onCompleted: (pincode) => {},
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10.0),
                    borderWidth: 0.0,
                    activeFillColor: Theme.of(context).colorScheme.secondary,
                    inactiveFillColor: Theme.of(context).colorScheme.background,
                  ),
                ),
                const SizedBox(height: 18.0),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.SELECT_USER_TYPE),
                    child: Text('Продолжить'))
              ],
            ),
          ),
        ));
  }
}
