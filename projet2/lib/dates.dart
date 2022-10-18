import 'package:json_annotation/json_annotation.dart';
part 'dates.g.dart';
@JsonSerializable()
class Date {

late int annee;
late int mois;
late int jour;

 Date(){}

factory Date.fromJson(Map<String, dynamic> json) =>
    _$DateFromJson(json);

Map<String, dynamic> toJson() => _$DateToJson(this);
}