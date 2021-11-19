import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/pages/tutor/profile/tutor_profile_page.dart';
import 'package:oqukz/presenter/pages/tutor/students/students_list_page.dart';
import 'package:oqukz/presenter/widgets/home/home_bottom_item.dart';

import 'tutor_home_controller.dart';

class TutorHomePage extends GetView<TutorHomeController> {
  TutorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Obx(() => Text('${controller.currentTitle.value}'))),
        body: SafeArea(
            child: Obx(
          () => IndexedStack(
            index: controller.currentPageIndex.value,
            children: [
              StudentsListPage(),
              TutorProfilePage(),
            ],
          ),
        )),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentPageIndex.value,
            onTap: (index) => controller.updateScreen(items[index], index),
            items: items
                .map((e) => BottomNavigationBarItem(
                    icon: Icon(e.icon), title: Text(e.title)))
                .toList(),
          ),
        ));
  }

  final List<HomeBottomItem> items = [
    HomeBottomItem('Студенты', StudentsListPage(), Icons.school),
    HomeBottomItem('Профиль', TutorProfilePage(), Icons.person),
  ];
}
