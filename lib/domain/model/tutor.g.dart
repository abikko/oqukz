// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tutor _$TutorFromJson(Map<String, dynamic> json) => Tutor()
  ..rating = (json['rating'] as num?)?.toDouble()
  ..activeRequests = (json['activeRequests'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList()
  ..favorites = (json['favorites'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList()
  ..acceptedRequests = (json['acceptedRequests'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TutorToJson(Tutor instance) => <String, dynamic>{
      'rating': instance.rating,
      'activeRequests': instance.activeRequests,
      'favorites': instance.favorites,
      'acceptedRequests': instance.acceptedRequests,
    };
