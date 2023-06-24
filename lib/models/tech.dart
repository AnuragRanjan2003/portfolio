import 'package:json_annotation/json_annotation.dart';

part 'tech.g.dart';

@JsonSerializable()
class Tech {
  final String name;
  final String url;

  Tech(this.name, this.url);

  Map<String, dynamic> toJson() => _$TechToJson(this);

  factory Tech.fromJson(json) => _$TechFromJson(json);
}
