/*
 * Branch BE_06
 * Api: /api/products/item/{product_id}
 * Fields:
 * screenshot: https://prnt.sc/8YHEix-oHHPr
 * Controller: Controllers/detailProducts.dart
 * Models: models/ProductDetails.dart
 */

import 'package:food_app_v2/models/ProductList.dart';

class ProductDetails extends ProductList
{
  ProductDetails({
    required super.id,
    required super.media_id,
    required super.title,
    required super.description,
    required super.price,
    required super.total_rate,
    required super.total_vote,
    required super.status,
    required super.media,
    required super.isFavourite
  });

  factory ProductDetails.formJson(Map<String, dynamic> json)
  {
    return ProductDetails(
        id          : json['id'],
        media_id    : json['media_id'],
        title       : json['name'],
        description : json['title'],
        price       : json['price'],
        total_rate  : json['total_rate'],
        total_vote  : json['total_vote'],
        status      : json['status'],
        media       : (json['media'] != null) ? json['media']['url'] : null,
        isFavourite : json['isFavourite']
    );
  }
}