// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => Student()
  ..rating = (json['rating'] as num?)?.toDouble()
  ..activeRequests = (json['activeRequests'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList()
  ..favorites = (json['favorites'] as List<dynamic>?)
      ?.map((e) => User.fromJson(e as Map<String, dynamic>))
      .toList()
  ..acceptedRequests = (json['acceptedRequests'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'rating': instance.rating,
      'activeRequests': instance.activeRequests,
      'favorites': instance.favorites,
      'acceptedRequests': instance.acceptedRequests,
    };
