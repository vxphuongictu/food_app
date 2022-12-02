/*
 * Branch BE_07
 * Api: /products/filter-search?textSearch=text
 * Fields:
 * screenshot: https://prnt.sc/aq85aCgGBAoF
 * Controller: Controllers/productSearch.dart
 * Models: models/ProductSearch.dart
 */

import 'package:food_app_v2/models/ProductList.dart';

class ProductSearch extends ProductList
{
  ProductSearch({
    required super.id,
    required super.media_id,
    required super.title,
    required super.description,
    required super.price,
    required super.total_rate,
    required super.total_vote,
    required super.status,
    required super.media
  });

  factory ProductSearch.formJson(Map<String, dynamic> json)
  {
    return ProductSearch(
        id          : json['id'],
        media_id    : json['media_id'],
        title       : json['title'],
        description : json['description'],
        price       : json['price'],
        total_rate  : json['total_rate'],
        total_vote  : json['total_vote'],
        status      : json['status'],
        media       : json['media']
    );
  }
}