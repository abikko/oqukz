import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order{
  String studentName;
  String phone;
  String? orderId;
  String lesson;
  double? price;
  String? address;
  String? topic;


  factory Order.fromJson(Map<String,dynamic> json) => _$OrderFromJson(json);

  Map<String,dynamic> toJson() => _$OrderToJson(this);


  Order(this.studentName, this.lesson,{this.address,this.phone = "",this.price,this.topic,this.orderId});
}