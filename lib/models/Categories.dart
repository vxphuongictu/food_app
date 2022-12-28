/*
 * Branch BE_08
 * Api: /api/categories/list
 * Fields:
 * screenshot: https://prnt.sc/NthM9NDUGXtq
 * Controller: Controllers/categories.dart
 * Models: models/Categories.dart
 */

class Categories
{
  late int ? id;
  late int ? media_id;
  late int ? user_id;
  late String ? name;
  late String ? background;
  late String ? border_color;
  late String ? description;
  late String ? media;

  Categories({
    required this.id,
    required this.media_id,
    required this.user_id,
    required this.name,
    required this.background,
    required this.border_color,
    required this.description,
    required this.media,
  });

  factory Categories.formJson(Map<String, dynamic> json)
  {
    return Categories(
      id        : json['id'],
      media_id  : json['media_id'],
      user_id   : json['user_id'],
      name     : json['name'],
      background    : json['background'],
      border_color  : json['border_color'],
      description   : json['description'],
      media         : (json['media'] != null) ? json['media']['url'] : null,
    );
  }

  Map<String, dynamic> toMap()
  {
    var map = <String, dynamic> {
      'id': this.id,
      'media_id': this.media_id,
      'user_id': this.user_id,
      'name': this.name,
      'background': this.background,
      'border_color': this.border_color,
      'description': this.description,
      'media': this.media,
    };

    return map;
  }

  Categories.fromMap(Map<String, dynamic> map){
    id = map['id'];
    media_id = map['media_id'];
    user_id = map['user_id'];
    name = map['name'];
    background = map['background'];
    border_color = map['border_color'];
    description = map['description'];
    media = map['media'];
  }
}