import 'package:json_annotation/json_annotation.dart';

import 'student.dart';
import 'tutor.dart';
part 'user.g.dart';

@JsonSerializable()
class User{
  String phone;
  String username;
  Student student;
  Tutor tutor;

  User(this.phone,this.username,this.student,this.tutor);

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);

  Map<String,dynamic> toJson() => _$UserToJson(this);

  get getPhone => phone;

 set setPhone( phone) => phone = phone;

  get getUsername => username;

 set setUsername( username) => username = username;

  get getStudent => student;

 set setStudent( student) => student = student;

  get getTutor => tutor;

 set setTutor( tutor) => tutor = tutor;

  User.newUser(this.phone,this.username) : student = Student(), tutor = Tutor();
}