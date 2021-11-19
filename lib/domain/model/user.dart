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

 set setPhone(String phone) => this.phone = phone.replaceAll('()+ ', '');

  get getUsername => username;

 set setUsername(String username) => this.username = username;

  get getStudent => student;

 set setStudent( student) => student = student;

 Tutor get getTutor => tutor;

 set setTutor( tutor) => tutor = tutor;

  User.newUser(this.phone,this.username) : this.tutor = Tutor(), this.student = Student();
}