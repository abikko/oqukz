import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/pages/student/create_request/student_create_request_page.dart';
import 'package:oqukz/presenter/pages/student/tutors/tutor_list_page.dart';
import 'package:oqukz/presenter/widgets/home/home_bottom_item.dart';

import 'profile/student_profile_page.dart';
import 'student_home_controller.dart';

class StudentHomePage extends GetView<StudentHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('${controller.currentTitle}'))),
      body: Obx(
        () => IndexedStack(
          children: items.map((e) => e.screen).toList(),
          index: controller.currentScreenIndex,
        ),
      ),
      bottomNavigationBar: Obx(() => 
      // BottomAppBar(
      //   notchMargin: 0.0,
      //   child:
         BottomNavigationBar(
          currentIndex: controller.currentScreenIndex,
          onTap: (index) => controller.updateScreen(items[index], index),
          items: items
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.icon), title: Text(e.title)))
              .toList(),
        // ),
      ),)
    );
  }

  final List<HomeBottomItem> items = [
    HomeBottomItem('Репетиторы', TutorListPage(), Icons.school),
    HomeBottomItem('Создать заявку', StudentCreateRequestPage(), Icons.add),
    HomeBottomItem('Профиль', StudentProfilePage(), Icons.person),
  ];
}
