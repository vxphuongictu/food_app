import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/database/DatabaseManager.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_app_v2/screens/cart/Cart.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/function/payment_stripe.dart';
import 'package:food_app_v2/screens/payment/Payment.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/function/replaceCardNumber.dart';


class ModalCheckOut extends StatefulWidget
{

  late double ? totalCost;
  CardFieldInputDetails ? _card;

  ModalCheckOut({super.key, this.totalCost});

  @override
  State<ModalCheckOut> createState() {
    return _ModalCheckout();
  }
}

class _ModalCheckout extends State<ModalCheckOut>
{

  late List<dynamic> fetchDelivery;
  String currentLocationName = '';
  late String email = "";
  late String phone = "";
  late String ? postCode = "";
  late String city = "";

  void paymentCallBack(CardFieldInputDetails ? card) {
    setState(() {
      this.widget._card = card;
      this.postCode = this.widget._card!.postalCode;
    });
  }

  Future<void> loadData() async {
    SharedMyDelivery().getAll().then((value) {
      this.fetchDelivery = value;

      SharedMyDelivery().currentLocation().then((value) {
        for (var i = 0; i < this.fetchDelivery.length; i ++) {
          final item = this.fetchDelivery[i];
          if (item.locatedID == value) {
            this.currentLocationName = item.fullname;
          }
        }
      });
    });

    SharedMyUser().getEmail().then((value) {
      if (value != null) this.email = value;
    });

    SharedMyUser().getAddress().then((value) {
      if (value != null) this.city = value;
    });
  }

  @override
  void initState() {
    super.initState();
    this.loadData().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return checkOut();
  }

  Widget checkOut()
  {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                      text: "Checkout",
                      size: 24.0
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  (this.fetchDelivery != null && this.fetchDelivery.isNotEmpty) ? Navigator.pushNamed(context, '/delivery').then((_)=>setState(() {})) : Navigator.pushNamed(context, '/new-location').then((_) => setState(() {}));
                },
                child: this.lineItem(label: "Delivery", value: (this.currentLocationName != '') ? this.currentLocationName : "Select Method"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Payment(bankCallback: this.paymentCallBack);
                      },
                    )
                  );
                },
                child: this.lineItem(label: "Payment", value: (this.widget._card != null) ? MyText(text: "${carNumber(this.widget._card!.number)}") : Image.asset('assets/images/card.png'), valueIsImage: true),
              ),
              GestureDetector(
                onTap: () {
                  print("Promo Code");
                },
                child: this.lineItem(label: "Promo Code", value: "Pick discount"),
              ),
              this.lineItem(label: "Total Cost", value: "\$${(this.widget.totalCost)?.toStringAsFixed(3)}"),
              this.readTerms(),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: GestureDetector(
                  onTap: () {
                    EasyLoading.show(status: "Waiting...");
                    if (this.email != "" && this.city != "" && this.postCode != "") {
                      handlePayPress(
                          email: this.email,
                          city: this.city,
                          postCode: this.postCode.toString(),
                          phone: '0877946666',
                          country: 'VN',
                          total_price: this.widget.totalCost!.toInt()
                      ).then((value) async {
                        if (value == true) {
                          EasyLoading.dismiss();
                          Navigator.pushNamedAndRemoveUntil(context, '/order-success', (route) => false);
                          await DatabaseManager().clearCart();
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(modal_payment_failed: true)));
                        }
                      });

                    } else {
                      EasyLoading.showError("You need to add payment method before order!");
                    }
                  },
                  child: MyButton(
                    text: "Place Order",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget readTerms()
  {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Text.rich(
          TextSpan(
              text: "By placing an order you agree to our ",
              style: const TextStyle(
                color: Color.fromRGBO(124, 124, 124, 1),
                fontSize: 14.0,
                fontFamily: "Gilroy-Medium",
              ),
              children: [
                TextSpan(
                    text: "Terms ",
                    style: const TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      fontSize: 14.0,
                      fontFamily: "Gilroy-Medium",
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      print('Terms');
                    }
                ),
                const TextSpan(
                  text: " and",
                  style: TextStyle(
                    color: Color.fromRGBO(124, 124, 124, 1),
                    fontSize: 14.0,
                    fontFamily: "Gilroy-Medium",
                  ),
                ),
                TextSpan(
                    text: " Conditions",
                    style: const TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      fontSize: 14.0,
                      fontFamily: "Gilroy-Medium",
                    ),
                    recognizer: TapGestureRecognizer()..onTap = (){
                      print("Conditions");
                    }
                ),
              ]
          ),
        )
    );
  }

  lineItem({String ? label, dynamic value, bool valueIsImage = false}) {
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: '#E2E2E2'.toColor()
                )
            )
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              MyText(
                text: "${label}"
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (valueIsImage) ? value : Container(
                        width: 180.0,
                        alignment: AlignmentDirectional.centerEnd,
                        child: MyText(
                          text: "${value}",
                          overflow: true,
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 30.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}