import 'package:get/get.dart';
import 'package:oqukz/data/local/settings_dao.dart';
import 'package:oqukz/data/remote/repository/user/user_repository.dart';
import 'package:oqukz/domain/model/user.dart';

class SelectUserTypeController extends GetxController {
  final UserRepository repository;
  final isLoading = true.obs;

  SelectUserTypeController(this.repository);

  void selectStudent() {
    SettingsDao.isStudent = true;
  }

  void selectTutor() {
    SettingsDao.isStudent = false;
  }

  Future createUser() async {
    if (SettingsDao.isStudent != null) {
      if (SettingsDao.isStudent!) {
      } else if (!SettingsDao.isStudent!) {}
    }
    await repository
        .createUser(User.newUser(SettingsDao.phone, 'Абыл'))
        .then((value) async => {
              await Future.delayed(const Duration(seconds: 3)),
              isLoading.value = false,
            });
  }
}
