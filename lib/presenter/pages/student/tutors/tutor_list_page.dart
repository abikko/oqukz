import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oqukz/domain/model/user.dart';
import 'package:oqukz/presenter/widgets/loading/loading_widget.dart';

import 'tutor_list_controller.dart';

class TutorListPage extends GetView<TutorListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => ListView.separated(
            itemBuilder: (context, index) => _UserItem(user: state![index]),
            separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            itemCount: state!.length),
        onLoading: const LoadingWidget(),
        onEmpty: const Text('Пусто, скоро все появится'),
        onError: (error) => const Text('Скоро все появится')
      ),
    );
  }
}

class _UserItem extends StatelessWidget {
  final User user;

  const _UserItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(color: Colors.black, width: 0.5)),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ФИО: ${user.getUsername}',style: Theme.of(context).textTheme.subtitle2,textAlign: TextAlign.start,),
            const SizedBox(height: 8.0),
            Text('Номер телефона: ${user.getPhone}'),
            const SizedBox(height: 8.0),
            Text('Рейтинг: ${user.getTutor.rating ?? 0}'),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
      ),
    );
  }
}
