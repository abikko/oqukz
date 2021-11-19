import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/widgets/grid_view/profile_progress_item.dart';

import 'tutor_profile_controller.dart';

class TutorProfilePage extends GetView<TutorProfileController> {
  const TutorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 36.0),
        Text(
          'Жетес Абылайхан',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12.0),
        Text(
          'Номер телефона: +7 747 909 42 14',
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 36),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5/1,
            children: [
              const ProfileProgressItem(name: 'Достижения', value: 0.6),
              const ProfileProgressItem(name: 'Уроков в неделю', value: 0.3),
            ],
          ),
        )
      ],
    );
  }
}
