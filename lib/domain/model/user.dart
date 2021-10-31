import 'student.dart';
import 'tutor.dart';

class User{
  String phone;
  String username;
  Student student;
  Tutor tutor;

  User.newUser(this.phone,this.username) : student = Student(), tutor = Tutor();
}