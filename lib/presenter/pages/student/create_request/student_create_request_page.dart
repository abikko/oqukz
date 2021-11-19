import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/domain/model/order.dart';
import 'package:oqukz/presenter/pages/student/create_request/student_create_request_controller.dart';
import 'package:oqukz/presenter/widgets/loading/loading_widget.dart';
import 'package:oqukz/presenter/widgets/text_field/oqu_text_field.dart';

class StudentCreateRequestPage extends StatelessWidget {
  late StudentCreateRequestController _controller;

  StudentCreateRequestPage({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController(text: 'aby');
  final TextEditingController _gradeController = TextEditingController(text: 'aby');
  final TextEditingController _priceController = TextEditingController(text: '0.53');
  final TextEditingController _isOnlineController = TextEditingController(text: 'aby');
  final TextEditingController _addressController = TextEditingController(text: 'aby');
  final TextEditingController _lessonsController = TextEditingController(text: 'aby');

  @override
  Widget build(BuildContext context) {
    _controller = Get.find();
    _controller.change(null,status: RxStatus.success());
    return _controller.obx(
      (state) => Container(
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
                controller: _isOnlineController,
                hintText: 'Онлайн или оффлайн'),
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
                  onPressed: () {
                    _controller.createOrder(
                      Order(
                        _nameController.text,
                        _lessonsController.text,
                        address: _addressController.text,
                        price: double.parse(_priceController.text),
                        topic: _isOnlineController.text,
                      ),
                    );
                  },
                  child: Text('Подать заявку')),
            )
          ],
        ),
      ),
      onLoading: const LoadingWidget(),
      onError: (error) {
        Get.showSnackbar(
          GetBar(
            title: 'Повторите позже',
          ),
        );
        return Text('Повторите позже');
      },
    );
  }
}
