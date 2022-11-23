/*
 * Branch BE_09
 * Api: /api/brand/list
 * Fields:
 * screenshot: https://prnt.sc/G2w6rHFIgSeY
 * Controller: Controllers/brands.dart
 * Models: models/Brands.dart
 */

import 'package:food_app_v2/models/Categories.dart';

class Brands extends Categories
{
  Brands({
    required super.id,
    required super.media_id,
    required super.user_id,
    required super.title,
    required super.background,
    required super.border_color,
    required super.description
  });

  factory Brands.formJson(Map<String, dynamic> json)
  {
    return Brands(
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