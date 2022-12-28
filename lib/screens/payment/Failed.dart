import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class Failed extends StatefulWidget
{
  const Failed({super.key});
  @override
  State<Failed> createState() => _FailedState();
}


class _FailedState extends State<Failed> {
  @override
  Widget build(BuildContext context) {
    return failedScreen();
  }

  @override
  void initState() {
    EasyLoading.dismiss();
  }

  Widget failedScreen()
  {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 0.7),
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 70, bottom: 70, right: 20, left: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close)),
            ),
            Expanded(child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/order-failed.png'),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: MyText(
                      text: "Oops! Order Failed",
                      size: 28.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: MyText(
                      text: "Something went tembly wrong.",
                      size: 16.0,
                      fontFamily: "Gilroy-Medium",
                      fontWeight: FontWeight.w100,
                      color: "#7C7C7C",
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => null,
                    child: MyButton(
                      text: "Please Try Again",
                      textSize: 18.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
                    child: MyButton(
                      text: "Back to home",
                      textSize: 18.0,
                      bgColor: null,
                      textColor: '#181725',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}