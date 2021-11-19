import 'package:get/get.dart';
import 'package:oqukz/data/remote/repository/user/user_repository.dart';
import 'package:oqukz/domain/model/user.dart';

class TutorListController extends GetxController with StateMixin<List<User>> {
  final UserRepository repository;
  TutorListController(this.repository);

  @override
  void onInit() {
    fetchTutors();
    super.onInit();
  }

  void fetchTutors() async {
    change(null, status: RxStatus.loading());
    await repository.getTeachersList().then((value) {
      if (value != null) {
        change(value, status: RxStatus.success());
      } else {
        change(null, status: RxStatus.empty());
      }
    }, onError: (object, stackTrace) => change(null, status: RxStatus.error()));
  }
}
