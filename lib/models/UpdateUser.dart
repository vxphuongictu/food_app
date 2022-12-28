/*
 * Branch BE_12
 * Api: /api/user/update
 * Fields: user_id ,name, gender( 0:female & 1:male) ,address, birthday
 * screenshot: https://prnt.sc/kUzC8Oucrh7c
 * Controller: Controllers/updateUser.dart
 * Models: models/UpdateUser.dart
 */


class UpdateUser
{
  late int ? id;
  late String ? name;
  late String ? email;
  late String ? phone;
  late int ? gender;
  late int ? status;

  UpdateUser({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.status
  });

  factory UpdateUser.fromJson(Map<String, dynamic> json)
  {
    return UpdateUser(
      id      : json['id'],
      name    : json['name'],
      email   : json['email'],
      phone   : json['phone'],
      gender  : json['gender'],
      status  : json['status']
    );
  }
}