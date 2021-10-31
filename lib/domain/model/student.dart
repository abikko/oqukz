import 'package:oqukz/domain/model/user.dart';

import 'order.dart';

class Student{
  double? rating;
  List<Order>? activeRequests;//active, in active searching for tutor
  List<User>? favorites;//favorite tutors.
  List<Order>? acceptedRequests; //active at the moment.
}