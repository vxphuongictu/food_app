import 'package:flutter/material.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class Success extends StatefulWidget
{
  @override
  State<Success> createState() {
    return _Success();
  }
}


class _Success extends State<Success>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: successScreen(),
    );
  }

  Widget successScreen()
  {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset('assets/images/bg-success.png', fit: BoxFit.cover),
        ),
        this.mainScreen(),
        Padding(
          padding: EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              this.trackOrderButton(),
              this.backHomeButton()
            ],
          ),
        ),
      ],
    );
  }

  Widget mainScreen()
  {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 50.0, left: 50.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Image.asset('assets/images/icon-success.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: MyText(
              text: "Your Order has been accepted",
              size: 28.0,
              maxLines: 2,
              centerText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: MyText(
              text: "Your items has been placcd and is on it’s way to being processed",
              size: 16.0,
              fontFamily: "Gilroy-Medium",
              maxLines: 2,
              fontWeight: FontWeight.w100,
              centerText: true,
              color: '#7C7C7C',
            ),
          ),
        ],
      ),
    );
  }

  Widget trackOrderButton()
  {
    return GestureDetector(
      onTap: () => null,
      child: MyButton(
        text: "Track Order",
        textSize: 18.0,
      ),
    );
  }

  Widget backHomeButton()
  {
    return GestureDetector(
      onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
      child: MyButton(
        text: "Back to home",
        textSize: 16.0,
        bgColor: null,
        textColor: '#181725',
        fontWeight: FontWeight.w900,
      ),
    );
  }
}