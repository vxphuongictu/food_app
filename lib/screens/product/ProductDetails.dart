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
import 'package:food_app_v2/core/SharePreferences.dart';
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

  late dynamic totalPrice;
  int ? quantity = 0;
  late Future<dynamic> ? getQuantity;
  late TextEditingController inputQuantity;
  late Future<ProductDetails> details;
  late Future<bool> isFavourite;

  @override
  void initState() {
    super.initState();
    this.details        = fetchDetails(product_id: this.widget.productID!);
    this.getQuantity    = SharedMyCart().get(productID: this.widget.productID!);
    this.isFavourite    = SharedMyFavourite().isFavourite(this.widget.productID);
    this.getQuantity?.then((value) {
      setState(() {
        this.quantity     = value;
      });
    });
  }

  Future<void> _refresh() async {
    setState(() {
      this.details        = fetchDetails(product_id: this.widget.productID!);
      this.getQuantity    = SharedMyCart().get(productID: this.widget.productID!);
      this.isFavourite    = SharedMyFavourite().isFavourite(this.widget.productID);
    });
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
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          minimum: EdgeInsets.only(left: 5.0, right: 5.0),
          child: detail(),
        ),
      ),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    await SharedMyFavourite().add(productID: this.widget.productID);
    return !isLiked;
  }

  Widget detail() {
    return FutureBuilder<dynamic>(
      future: Future.wait([this.details, this.isFavourite]),//this.details,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final dataProducts = snapshot.data[0];
          final dataFavourite = snapshot.data[1];
          if (dataProducts?.price != null) {
            this.totalPrice = (this.quantity! * dataProducts!.price!.toDouble());
          } else {
            this.totalPrice = dataProducts?.price;
          }

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
                      customizedIndicators: const IndicatorModel.animation(width: 5.0,
                          height: 3.0,
                          spaceBetween: 4.0,
                          widthAnimation: 20.0),
                      customizedBanners: [
                        (dataProducts?.media) != null ? Image.asset(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                        (dataProducts?.media) != null ? Image.asset(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                        (dataProducts?.media) != null ? Image.asset(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                      ],
                    ),
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
                                  text: "${dataProducts?.title}",
                                  color: '#181725',
                                  size: 24.0,
                                  fontFamily: 'Gilroy-Bold',
                                ),
                                LikeButton(
                                  isLiked: dataFavourite,
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 30.0),
                            width: double.infinity,
                            child: MyText(
                              text: "${dataProducts?.description}",
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
                                  onPressed: () =>
                                      setState(() {
                                        this.quantity =
                                        (this.quantity! < 1) ? 0 : (this
                                            .quantity! - 1);
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
                                  onPressed: () =>
                                      setState(() {
                                        this.quantity = (this.quantity! + 1);
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
                                      fontFamily: "Gilroy-Bold",
                                      size: 24.0,
                                      color: '#181725',
                                      text: "\$${(this.totalPrice)
                                          .toStringAsFixed(3)}",
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
                                          onPressed: () => {},
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
                                text: "${dataProducts?.description}",
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
                                  itemBuilder: (context, _) =>
                                  const Icon(
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
                        InkWell(
                          onTap: () => setState(() {
                            SharedMyCart().add(
                              productID: this.widget.productID,
                              productDescription: "${snapshot.data?.description}",
                              productPrice: (snapshot.data?.price)?.toDouble(),
                              productThumbnails: "${snapshot.data?.media}",
                              productName: "${snapshot.data?.title}",
                              productQuantity: this.quantity
                            );
                          }),
                          child: MyButton(
                            text: "Add To Basket",
                            textSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
