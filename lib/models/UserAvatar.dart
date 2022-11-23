/*
 * Branch BE_11
 * Api: /api/register
 * Fields: user_id, avatar (base 64)
 * screenshot: https://prnt.sc/FQyZ5ak089uj
 * Controller: Controllers/userAvatar.dart
 * Models: models/UserAvatar.dart
 */

class UserAvatar
{
  late int ? id;
  late String ? name;
  late String ? email;
  late String ? phone;
  late bool ? gender;
  late bool ? status;
  late Media ? media;

  UserAvatar({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.status,
    required this.media
  });
  
  factory UserAvatar.fromJson(Map<String, dynamic> json)
  {
    return UserAvatar(
      id      : json['id'],
      name    : json['name'],
      email   : json['email'],
      phone   : json['phone'],
      gender  : json['gender'],
      status  : json['status'],
      media   : json['media'] != null ? Media.fromJson(json['media']) : null,
    );
  }
}

class Media
{
  late int ? id;
  late int ? user_id;
  late bool ? type;
  late String ? type_media;

  Media({this.id, this.user_id, this.type, this.type_media});

  factory Media.fromJson(Map<String, dynamic> json)
  {
    return Media(
      id        : json['id'],
      user_id   : json['user_id'],
      type      : json['type'],
      type_media: json['type_media'],
    );
  }
}