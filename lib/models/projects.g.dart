// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Projects _$ProjectsFromJson(Map<String, dynamic> json) => Projects(
      json['name'] as String,
      json['type'] as int,
      json['disc'] as String,
      json['link'] as String,
    );

Map<String, dynamic> _$ProjectsToJson(Projects instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'disc': instance.disc,
      'link': instance.link,
    };
