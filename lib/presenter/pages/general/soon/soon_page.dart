import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'soon_controller.dart';

class SoonPage extends GetView<SoonController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('Скоро')),

    body: SafeArea(
      child: Text('Скоро будет добавлено в приложение'))
    );
  }
}