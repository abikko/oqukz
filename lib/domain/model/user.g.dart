// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['phone'] as String,
      json['username'] as String,
      Student.fromJson(json['student'] as Map<String, dynamic>),
      Tutor.fromJson(json['tutor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'phone': instance.phone,
      'username': instance.username,
      'student': instance.student.toJson(),
      'tutor': instance.tutor.toJson(),
    };
