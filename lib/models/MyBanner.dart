/*
 * Branch BE_10
 * Api: /api/banner
 * Fields:
 * screenshot: https://prnt.sc/x38D5iDBFmJS
 * Controller: Controllers/myBanners.dart
 * Models: models/BannerImage.dart
 */

class MyBanner
{
  late int ? id;
  late int ? user_id;
  late dynamic ? url_img;
  late String ? title;
  late int ? status;

  MyBanner({
    required this.id,
    required this.user_id,
    required this.url_img,
    required this.title,
    required this.status
  });

  factory MyBanner.formJson(Map<String, dynamic> json)
  {
    return MyBanner(
      id      : json['id'],
      user_id : json['user_id'],
      url_img : json['url_img'],
      title   : json['title'],
      status  : json['status'],
    );
  }
}