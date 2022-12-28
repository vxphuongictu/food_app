import 'package:flutter/material.dart';
import 'package:food_app_v2/screens/payment/Failed.dart';
import 'package:food_app_v2/screens/product/ProductDetails.dart';
import 'package:food_app_v2/widgets/CartItem.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/Checkout.dart';
import 'package:food_app_v2/database/DatabaseManager.dart';


class Cart extends StatefulWidget
{

  bool modal_payment_failed = false;

  Cart({super.key, this.modal_payment_failed = false});

  @override
  State<Cart> createState() {
    return _Cart();
  }
}

class _Cart extends State<Cart>
{

  late Future<dynamic> listCart;
  List<dynamic> listProductID  = [];
  double totalPriceToCheckOut = 0.0;

  @override
  void initState() {
    this.listCart               = DatabaseManager().fetchCart();
  }

  Future<void> _refresh() async {
    setState(() {
      this.listCart             = DatabaseManager().fetchCart();
      this.totalPriceToCheckOut = 0.0;
      this.listProductID        = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: MyText(
            text: "My Cart",
            fontWeight: FontWeight.w100,
            fontFamily: "Gilroy-Bold",
          ),
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: Stack(
            children: [
              SafeArea(
                minimum: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: myCart(),
              ),
              Visibility(
                visible: this.widget.modal_payment_failed,
                child: Failed(),
              )
            ],
          ),
        ),
    );
  }

  Widget myCart()
  {
    return FutureBuilder<dynamic>(
      future: this.listCart,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          for (var i = 0; i < snapshot.data!.length; i ++) {
            if (listProductID.contains(snapshot.data?[i]['productID'].toString()) == false) {
              this.totalPriceToCheckOut = this.totalPriceToCheckOut + snapshot.data![i]['productTotalPrice'];
              listProductID.add(snapshot.data![i]['productID'].toString());
            }
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        onTap: () =>
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetail(productID: snapshot.data?[index]['productID']),
                                )
                            ),
                        child: CartItem(
                          productID: snapshot.data?[index]['productID'],
                          productThumbnails: snapshot.data?[index]['productThumbnails'],
                          productDescription: snapshot.data?[index]['productDescription'],
                          productName: snapshot.data?[index]['productName'],
                          productQuantity: snapshot.data?[index]['productQuantity'],
                          productPrice: snapshot.data?[index]['productPrice'],
                        ),
                      ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24.0),
                child: TextButton(
                  onPressed: () => setState(() {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      isDismissible: false,
                      elevation: 0.0,
                      context: context,
                      builder: (context){
                        return ModalCheckOut(totalCost: this.totalPriceToCheckOut);
                      },
                    );
                  }),
                  child: MyButton(
                    text: "Go to Checkout",
                    description: (this.totalPriceToCheckOut != null) ? "\$${(this.totalPriceToCheckOut).toStringAsFixed(3)}" : "\$0.0",
                  ),
                ),
              )
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}