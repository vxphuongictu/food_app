/*
 * Branch BE_05
 * Api: /api/products/list
 * Fields:
 * screenshot: https://prnt.sc/WUVHAoicKSGc
 * Controller: Controllers/listProducts.dart
 * Models: models/ProductList.dart
 */

class ProductList
{
  late int ? id;
  late int ? media_id;
  late String ? title;
  late String ? description;
  late double ? price;
  late int ? total_rate;
  late int ? total_vote;
  late int ? status;
  late String ? media;
  late bool ? isFavourite;

  ProductList({
    required this.id,
    required this.media_id,
    required this.title,
    required this.description,
    required this.price,
    required this.total_rate,
    required this.total_vote,
    required this.status,
    required this.media,
    required this.isFavourite
  });

  factory ProductList.formJson(Map<String, dynamic> json)
  {
    return ProductList(
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