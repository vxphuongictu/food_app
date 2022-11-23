/*
 * Branch BE_13
 * Api: /api/orders
 * Fields:
 * screenshot: https://prnt.sc/b5LrgE4c6q7d
 * Controller: Controllers/listOrders.dart
 * Models: models/ListOrders.dart
 */

class ListOrders
{
  late int ? id;
  late int ? user_id;
  late OrderDetails ? order_detail;

  ListOrders({this.id, this.user_id, this.order_detail});

  factory ListOrders.formJson(Map<String, dynamic> json)
  {
    return ListOrders(
      id          : json['id'],
      user_id     : json['user_id'],
      order_detail: json['order_detail']
    );
  }
}

class OrderDetails
{
  late int ? id;
  late int ? order_id;
  late int ? product_id;
  late int ? quantity;

  OrderDetails({this.id, this.order_id, this.product_id, this.quantity});

  factory OrderDetails.formJson(Map<String, dynamic> json)
  {
    return OrderDetails(
      id        : json['id'],
      order_id  : json['order_id'],
      product_id: json['product_id'],
      quantity  : json['quantity']
    );
  }
}