import 'package:flutter/material.dart';
import 'package:oqukz/presenter/widgets/grid_view/profile_progress_item.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({Key? key}) : super(key: key);

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
            children: List.generate(3, (index) => ProfileProgressItem(name: "Достижения", value: 0.3)).toList(),
          ),
        )
      ],
    );
  }
}