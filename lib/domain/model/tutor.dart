import 'order.dart';

class Tutor {
  double? rating;
  List<Order>? activeRequests; //active, in active searching for tutor
  List<Order>? favorites;//favorite requests from students.
  List<Order>? acceptedRequests; //active at the moment.
}
