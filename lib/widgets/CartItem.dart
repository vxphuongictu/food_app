import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';


class CartItem extends StatefulWidget
{
  @override
  State<CartItem> createState() {
    return _CartItem();
  }
}

class _CartItem extends State<CartItem>
{
  int quantity = 1;
  late TextEditingController ? inputQuantity;

  @override
  Widget build(BuildContext context) {
    return item();
  }

  Widget item() {
    inputQuantity   = TextEditingController(text: "${this.quantity}");

    return Container(
      padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: '#E2E2E2'.toColor(),
          )
        )
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70.0,
            height: 70.0,
            child: Image.asset("assets/images/product.png"),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: "Bell Pepper Red",
                          size: 16.0,
                          fontFamily: "Gilroy-Bold",
                          fontWeight: FontWeight.w100,
                        ),
                        IconButton(
                          onPressed: () {
                            print('close');
                          },
                          icon: Icon(
                            Icons.close_outlined,
                            color: '#B3B3B3'.toColor(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 13.0),
                    child:  MyText(
                      text: "1kg, Price",
                      fontFamily: "Gilroy-Medium",
                      size: 14.0,
                      color: '#7C7C7C',
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: '#E2E2E2'.toColor()
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(17.0),
                            )
                        ),
                        child: IconButton(
                          onPressed: ()=> setState(() {
                            quantity = (quantity < 1) ? 0 : (quantity - 1);
                          }),
                          icon: const FaIcon(
                            FontAwesomeIcons.minus,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: TextField(
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          controller: inputQuantity,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                        ),
                      ), // Input quantity number
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: '#E2E2E2'.toColor()
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(17.0),
                            )
                        ),
                        child: IconButton(
                          onPressed: ()=> setState(() {
                            quantity = (quantity < 1) ? 0 : (quantity - 1);
                          }),
                          icon: const FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 15.0),
                          alignment: AlignmentDirectional.bottomEnd,
                          child: MyText(
                            text: "\$15.50",
                            size: 18.0,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}