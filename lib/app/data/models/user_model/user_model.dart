import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class User {
  int? userId;
  int? id;
  String? title;
  String? body;

  User({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}