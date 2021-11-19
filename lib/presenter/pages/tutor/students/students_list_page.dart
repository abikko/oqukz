import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/domain/model/order.dart';
import 'package:oqukz/internal/app_module.dart';
import 'package:oqukz/presenter/widgets/loading/loading_widget.dart';

import 'students_list_controller.dart';

class StudentsListPage extends GetView<StudentsListController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => Scaffold(
              body: SafeArea(
                child: (ListView.separated(
                  itemBuilder: (context, index) =>
                      _OrderItem(order: state![index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16.0),
                  itemCount: state!.length,
                )),
              ),
            ),
        onLoading: const LoadingWidget());
  }
}

class _OrderItem extends StatelessWidget {
  final Order order;
  const _OrderItem({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(color: Colors.black, width: 0.5)),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ФИО: ${order.studentName}',
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8.0),
            Text('Номер телефона: ${order.phone}'),
            const SizedBox(height: 8.0),
            Text('Цена в час: ${order.price}'),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
      ),
    );
  }
}
