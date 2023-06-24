import 'package:json_annotation/json_annotation.dart';

part 'projects.g.dart';

@JsonSerializable()
class Projects {
  final String name;
  final int type;
  final String disc;
  final String link;

  Projects(this.name, this.type, this.disc, this.link);

  Map<String, dynamic> toJson() => _$ProjectsToJson(this);

  factory Projects.fromJson(json) => _$ProjectsFromJson(json);
}
