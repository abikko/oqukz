import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/presenter/widgets/text_field/oqu_text_field.dart';

class StudentCreateRequestPage extends StatelessWidget {
  StudentCreateRequestPage({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _isOnlineController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _lessonsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OquTextField(
              controller: _nameController, hintText: 'ФИО обучающегося'),
          const SizedBox(height: 12.0),
          OquTextField(
              controller: _gradeController,
              hintText: 'Класс/Курс обучающегося'),
          const SizedBox(height: 12.0),
          OquTextField(
            controller: _priceController,
            hintText: 'Цена в час',
            inputType: TextInputType.number,
          ),
          const SizedBox(height: 12.0),
          OquTextField(
              controller: _isOnlineController, hintText: 'Онлайн или оффлайн'),
          const SizedBox(height: 12.0),
          OquTextField(controller: _addressController, hintText: 'Адрес'),
          const SizedBox(height: 12.0),
          OquTextField(
              controller: _lessonsController,
              hintText: 'По каким урокам, темы'),
        const SizedBox(height: 24.0),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () =>
                    Get.snackbar('Успешно', 'Ваша заявка подана преподавателям.'),
                child: Text('Подать заявку')),
          )
        ],
      ),
    );
  }
}
