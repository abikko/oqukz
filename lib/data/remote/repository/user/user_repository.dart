import 'package:oqukz/domain/model/user.dart';

abstract class UserRepository{
  Future<List<User>> getTeachersList();

  Future createUser(User user);

  Future<User> getUserByPhone(String phone);
}