import 'package:oqukz/domain/model/user.dart';

abstract class UserRepository{
  Stream<User> getTeachersList();

  Future createUser(User user);
}