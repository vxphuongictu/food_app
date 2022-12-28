/*
 * Models: models/MyDelivery.dart
 * It will convert location of user to json decode
 */

class MyDelivery
{
  late int locatedID;
  late String fullname;
  late String phoneNumber;
  late String country;
  late String street;
  late int type;
  late bool isDefault;
  late bool isPickup;
  late bool isShipping;
  late bool isSelected;

  MyDelivery({
    required this.locatedID,
    required this.fullname,
    required this.phoneNumber,
    required this.country,
    required this.street,
    required this.type,
    required this.isDefault,
    required this.isPickup,
    required this.isShipping,
    required this.isSelected
  });

  factory MyDelivery.formJson(Map<String, dynamic> json){
    return MyDelivery(
      locatedID   : json['locatedID'],
      fullname    : json['fullname'],
      phoneNumber : json['phoneNumber'],
      country     : json['country'],
      street      : json['street'],
      type        : json['type'],
      isDefault   : json['isDefault'],
      isPickup    : json['isPickup'],
      isShipping  : json['isShipping'],
      isSelected  : json['isSelected']
    );
  }
}