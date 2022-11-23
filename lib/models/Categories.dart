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
  late String ? title;
  late String ? background;
  late String ? border_color;
  late String ? description;

  Categories({
    required this.id,
    required this.media_id,
    required this.user_id,
    required this.title,
    required this.background,
    required this.border_color,
    required this.description
  });

  factory Categories.formJson(Map<String, dynamic> json)
  {
    return Categories(
      id        : json['id'],
      media_id  : json['media_id'],
      user_id   : json['user_id'],
      title     : json['title'],
      background    : json['background'],
      border_color  : json['border_color'],
      description   : json['description']
    );
  }
}