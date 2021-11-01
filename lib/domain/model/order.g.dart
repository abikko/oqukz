// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      json['studentName'] as String,
      json['lesson'] as String,
    )
      ..phone = json['phone'] as String
      ..orderId = json['orderId'] as String?
      ..price = (json['price'] as num?)?.toDouble()
      ..address = json['address'] as String?
      ..topic = json['topic'] as String?;

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'studentName': instance.studentName,
      'phone': instance.phone,
      'orderId': instance.orderId,
      'lesson': instance.lesson,
      'price': instance.price,
      'address': instance.address,
      'topic': instance.topic,
    };
