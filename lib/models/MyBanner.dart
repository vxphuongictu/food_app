/*
 * Branch BE_10
 * Api: /api/banner
 * Fields:
 * screenshot: https://prnt.sc/x38D5iDBFmJS
 * Controller: Controllers/myBanners.dart
 * Models: models/BannerImage.dart
 */

class Banner
{
  late int ? id;
  late int ? user_id;
  late String ? url_img;
  late String ? title;
  late bool ? status;

  Banner({
    required this.id,
    required this.user_id,
    required this.url_img,
    required this.title,
    required this.status
  });

  factory Banner.formJson(Map<String, dynamic> json)
  {
    return Banner(
      id      : json['id'],
      user_id : json['user_id'],
      url_img : json['url_img'],
      title   : json['title'],
      status  : json['status'],
    );
  }
}