import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'tutor.g.dart';

@JsonSerializable()
class Tutor {
  double? rating;
  List<Order>? activeRequests; //active, in active searching for tutor
  List<Order>? favorites;//favorite requests from students.
  List<Order>? acceptedRequests; //active at the moment.

  Tutor();
  

  factory Tutor.fromJson(Map<String,dynamic> json) => _$TutorFromJson(json);

  Map<String,dynamic> toJson() => _$TutorToJson(this);

}
