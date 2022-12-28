/*
 * Dependencies
 * 5171070559429100
 * flutter_stripe: ^7.0.0
 */


import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:flutter_stripe/flutter_stripe.dart';


class Payment extends StatefulWidget
{

  Function ? bankCallback;

  Payment({this.bankCallback});

  @override
  State<Payment> createState() {
    return _Payment();
  }
}


class _Payment extends State<Payment>
{
  CardFieldInputDetails ? _card = null;
  final controller = CardFormEditController();
  TextEditingController endDate = TextEditingController(text: "25-07-1998");
  final _textSize = 16.0;

  @override
  void initState() {
    Stripe.publishableKey = stripePublishableKey;
    Stripe.instance.applySettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#e6e6e6".toColor(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: MyText(
          text: "Payment",
          fontFamily: "Gilroy-Bold",
          size: 20.0,
        ),
      ),
      body: payment(),
    );
  }

  Widget payment()
  {
    return Column(
      children: [
        safeMsg(),
        Expanded(child: cardDetails()),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 30.0),
            child: GestureDetector(
              onTap: () async {
                EasyLoading.show(status: "Waiting ...");
                if(_card?.complete == true) {
                  this.widget.bankCallback!(_card);
                }
                EasyLoading.dismiss();
                Navigator.pop(context);
              },
              child: MyButton(
                text: "Complete",
                bgColor: (_card?.complete == false || _card?.complete == null) ? "#a6a6a6" : "#53B175",
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget cardDetails()
  {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: MyText(
                text: "Card details",
              )),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.ccVisa,
                  size: this._textSize,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.ccMastercard,
                  size: this._textSize,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: FaIcon(
                  FontAwesomeIcons.ccJcb,
                  size: this._textSize,
                  color: Colors.grey,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.paypal,
                size: this._textSize,
                color: Colors.grey,
              )
            ],
          ),
          cardInput(),
        ],
      ),
    );
  }

  Widget cardInput()
  {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: CardFormField(
        controller: controller,
        enablePostalCode: true,
        autofocus: true,
        onCardChanged: (details) {
          setState(() {
            this._card = details;
          });
        },
        dangerouslyGetFullCardDetails: true,
        dangerouslyUpdateFullCardDetails: true,
      ),
    );
  }

  Widget safeMsg()
  {
    return Container(
      padding: EdgeInsets.all(15.0),
      width: double.infinity,
      color: '#e6fffa'.toColor(),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.health_and_safety_rounded,
                color: '#009933'.toColor(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: MyText(
                  text: "Your card information was secure",
                  size: 18.0,
                  color: '#009933',
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 45.0),
            child: MyText(
              text: "We are co-operate with CyberSource to make sure that your card information is safely and absolutely secure. We don't have access permission in your card",
              maxLines: 10,
              color: '#808080',
              size: this._textSize,
            ),
          )
        ],
      ),
    );
  }
}