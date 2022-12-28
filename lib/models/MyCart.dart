class MyCart
{
  late int ? productID;
  late String ? productName;
  late String ? productDescription;
  late int ? productQuantity;
  late String ? productThumbnails;
  late double ? productPrice;
  late double ? productTotalPrice;

  MyCart({
    required this.productID,
    required this.productName,
    required this.productDescription,
    required this.productQuantity,
    required this.productThumbnails,
    required this.productPrice,
    required this.productTotalPrice
  });

  factory MyCart.formJson(Map<String, dynamic> json)
  {
    return MyCart(
      productID           : json['productID'],
      productName         : json['productName'],
      productDescription  : json['productDescription'],
      productQuantity     : json['productQuantity'],
      productThumbnails   : json['productThumbnails'],
      productPrice        : json['productPrice'],
      productTotalPrice   : json['productTotalPrice']
    );
  }

  MyCart.fromMap(Map<String, dynamic> map){
    productID = map['productID'];
    productName = map['productName'];
    productDescription = map['productDescription'];
    productQuantity = map['productQuantity'];
    productThumbnails = map['productThumbnails'];
    productPrice = map['productPrice'];
    productTotalPrice = map['productTotalPrice'];
  }

  Map<String, dynamic> toMap()
  {
    var map = <String, dynamic> {
      'productID': this.productID,
      'productName': this.productName,
      'productDescription': this.productDescription,
      'productQuantity': this.productQuantity,
      'productThumbnails': this.productThumbnails,
      'productTotalPrice': this.productTotalPrice
    };

    return map;
  }
}