import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class ModalCheckOut extends StatefulWidget
{
  const ModalCheckOut({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ModalCheckout();
  }
}

class _ModalCheckout extends State<StatefulWidget>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: checkOut(),
    );
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
        ),
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
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
              this.lineItem(label: "Delivery", value: "Select Method"),
              this.lineItem(label: "Pament", value: Image.asset('assets/images/card.png'), valueIsImage: true),
              this.lineItem(label: "Promo Code", value: "Pick discount"),
              this.lineItem(label: "Total Cost", value: "\$13.97"),
              this.readTerms(),
              MyButton(
                text: "Place Order",
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
          // border: StyleManager.border(key: 'bottom'),
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              MyText(
                text: "${label}",
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (valueIsImage) ? value : MyText(
                        text: "${value}",
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