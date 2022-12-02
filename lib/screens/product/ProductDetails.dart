/* dependencies
 * font_awesome_flutter: ^10.2.1
 * like_button: ^2.0.5
 * banner_carousel: ^1.2.1
 * flutter_rating_bar: ^4.0.1
 * run as --no-sound-null-safety
 * font gilroy: https://www.fontshmonts.com/text-fonts/gilroy/#google_vignette
 */


import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app_v2/controllers/detailProducts.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/models/ProductDetails.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:like_button/like_button.dart';


class ProductDetail extends StatefulWidget {

  late int ? productID;
  ProductDetail({super.key, this.productID});

  @override
  State<ProductDetail> createState() {
    return _ProductDetail();
  }
}

class _ProductDetail extends State<ProductDetail>
{

  int quantity = 1;
  late TextEditingController inputQuantity;
  late Future<ProductDetails> details;

  @override
  void initState() {
    details       = fetchDetails(product_id: this.widget.productID!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    inputQuantity   = TextEditingController(text: "${this.quantity}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: ()=> {},
            icon: Icon(
              Icons.share,
              color: '#181725'.toColor(),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(
            context
          ),
          icon: Icon(
            Icons.arrow_back_ios,
            color: '#181725'.toColor(),
          ),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 5.0, right: 5.0),
        child: detail(),
      ),
    );
  }

  Widget detail() {
    return FutureBuilder(
      future: details,
      builder: (context, snapshot) {
        return SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                  Container(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: '#F2F3F2'.toColor(),
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  child: BannerCarousel(
                    animation: true,
                    showIndicator: true,
                    activeColor: Colors.green,
                    disableColor: Colors.grey,
                    indicatorBottom: false,
                    height: 300.0,
                    customizedIndicators: IndicatorModel.animation(width: 5.0, height: 3.0, spaceBetween: 4.0, widthAnimation: 20.0),
                    customizedBanners: [
                      (snapshot.data?.media) != null ? Image.asset('${host}${snapshot.data?.media}') : Image.asset('assets/images/product.png'),
                      (snapshot.data?.media) != null ? Image.asset('${host}${snapshot.data?.media}') : Image.asset('assets/images/product.png'),
                      (snapshot.data?.media) != null ? Image.asset('${host}${snapshot.data?.media}') : Image.asset('assets/images/product.png'),
                    ],
                  ) ,
                ), // Banner, Back button, share button,
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Naturel Red Apple",
                                color: '#181725',
                                size: 24.0,
                                fontFamily: 'Gilroy-Bold',
                              ),
                              const LikeButton(
                                onTap: null,
                              )
                            ],
                          )
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          width: double.infinity,
                          child: MyText(
                            text: "1kg, Price",
                            color: '#7C7C7C'.toString(),
                          )
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            // border: '#F2F3F2'.toColor()
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: ()=> setState(() {
                                  quantity = (quantity < 1) ? 0 : (quantity - 1);
                                }),
                                icon: const FaIcon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.grey,
                                ),
                              ), // Remove button
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(17.0),
                                    )
                                ),
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
                              IconButton(
                                onPressed: ()=> setState(() {
                                  quantity = (quantity + 1);
                                }),
                                icon: const FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.green,
                                ),
                              ), // Add button
                              Expanded(
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: MyText(
                                    text: "\$4.99",
                                    fontFamily: "Gilroy-Bold",
                                    size: 24.0,
                                    color: '#181725',
                                  ),
                                ),
                              ) // Price
                            ],
                          )
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          // border: '#F2F3F2'.toColor()
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MyText(
                                  text: "Product Detail",
                                  size: 16.0,
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: IconButton(
                                        onPressed: ()=> {},
                                        icon: const FaIcon(
                                          FontAwesomeIcons.angleDown,
                                          size: 20,
                                        ),
                                      )
                                  ),
                                )
                              ],
                            ),
                            MyText(
                              text: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                              fontFamily: 'Gilroy-Medium',
                              size: 13.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          // border: '#F2F3F2'.toColor()
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyText(
                                text: "Nutritions",
                                size: 16.0,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 18.0,
                              width: 33.0,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(235, 235, 235, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: MyText(
                                text: "100gr",
                                size: 9.0,
                              ),
                            ),
                            IconButton(
                              onPressed: () => {},
                              icon: const FaIcon(
                                FontAwesomeIcons.angleRight,
                                color: Color.fromRGBO(24, 23, 37, 1),
                                size: 20.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyText(
                                text: "Review",
                                size: 16.0,
                                color: '#181725',
                              ),
                            ),
                            Container(
                              child: RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(243, 96, 63, 1),
                                ),
                                itemSize: 20.0,
                              ),
                            ),
                            IconButton(
                              onPressed: () => {},
                              icon: const FaIcon(
                                FontAwesomeIcons.angleRight,
                                color: Color.fromRGBO(24, 23, 37, 1),
                                size: 20.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      MyButton(
                        text: "Add To Basket",
                        textSize: 18.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
