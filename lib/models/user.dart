import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  final String imageUrl;

  User(this.name, this.imageUrl);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(json) => _$UserFromJson(json);
}
