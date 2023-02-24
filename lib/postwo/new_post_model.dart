import 'dart:convert';

class NewPostModel {
  NewPostModel({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  final int id;
  final String title;
  final String body;
  final int userId;
  final List<String> tags;
  final int reactions;

  NewPostModel copyWith({
    int? id,
    String? title,
    String? body,
    int? userId,
    List<String>? tags,
    int? reactions,
  }) =>
      NewPostModel(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        userId: userId ?? this.userId,
        tags: tags ?? this.tags,
        reactions: reactions ?? this.reactions,
      );

  factory NewPostModel.fromRawJson(String str) =>
      NewPostModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewPostModel.fromJson(Map<String, dynamic> json) => NewPostModel(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        reactions: json["reactions"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "reactions": reactions,
      };
}
