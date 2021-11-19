import 'package:get/get.dart';
import 'package:oqukz/data/remote/repository/user/user_repository.dart';

class TutorProfileController extends GetxController {

final UserRepository repository;
TutorProfileController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}