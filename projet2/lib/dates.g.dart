// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Date _$DateFromJson(Map<String, dynamic> json) => Date()
  ..annee = json['annee'] as int
  ..mois = json['mois'] as int
  ..jour = json['jour'] as int;

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
      'annee': instance.annee,
      'mois': instance.mois,
      'jour': instance.jour,
    };
