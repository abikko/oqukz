import 'package:json_annotation/json_annotation.dart';
import 'package:oqukz/domain/model/user.dart';

import 'order.dart';

part 'student.g.dart';

@JsonSerializable()
class Student{
  double? rating;
  List<Order>? activeRequests;//active, in active searching for tutor
  List<User>? favorites;//favorite tutors.
  List<Order>? acceptedRequests; //active at the moment.

  Student();


  factory Student.fromJson(Map<String,dynamic> json) => _$StudentFromJson(json);

  Map<String,dynamic> toJson() => _$StudentToJson(this);

}