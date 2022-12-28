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
import 'package:food_app_v2/controllers/detailProducts.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/database/DatabaseManager.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:like_button/like_button.dart';
import 'package:food_app_v2/widgets/DropDownItemGorups.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
  int quantity = 0;
  bool showDetails = false;
  bool showNutritions = false;
  bool showReview = false;
  late Future<dynamic> ? getQuantity;
  late TextEditingController inputQuantity;
  late Future<ProductList> details;
  bool isFavourite = false;

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    await SharedMyFavourite().add(productID: this.widget.productID);
    return !isLiked;
  }

  Future<void> _refresh() async {
    setState(() {
      this.details        = fetchDetails(product_id: this.widget.productID!);
      this.getQuantity    = DatabaseManager().fetchDetailProductInCart(this.widget.productID);
      SharedMyFavourite().isFavourite(this.widget.productID).then((value) {
        if (value != null) this.isFavourite    = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    this.details        = fetchDetails(product_id: this.widget.productID!);
    this.getQuantity    = DatabaseManager().fetchDetailProductInCart(this.widget.productID);
    SharedMyFavourite().isFavourite(this.widget.productID).then((value) {
      if (value != null) this.isFavourite    = value;
    });
    this.getQuantity?.then((value) {
      setState(() {
        this.quantity     = value[0]['productQuantity'];
      });
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
          Padding(padding: EdgeInsets.only(right: default_margin), child: IconButton(
            onPressed: ()=> {},
            icon: Icon(
              Icons.share,
              color: '#181725'.toColor(),
            ),
          )),
        ],
        leading: Padding(padding: EdgeInsets.only(left: default_margin), child: IconButton(
          onPressed: () => Navigator.pop(
              context
          ),
          icon: Icon(
            Icons.arrow_back_ios,
            color: '#181725'.toColor(),
          ),
        )),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          minimum: EdgeInsets.only(left: default_margin, right: default_margin),
          child: detail(),
        ),
      ),
    );
  }

  Widget detail() {
    return FutureBuilder<dynamic>(
      future: this.details,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final dataProducts = snapshot.data;
          if (dataProducts?.price != null) {
            this.totalPrice = (this.quantity * dataProducts!.price!.toDouble());
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
                        (dataProducts?.media) != null ? Image.network(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                        (dataProducts?.media) != null ? Image.network(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                        (dataProducts?.media) != null ? Image.network(
                            '${host}${dataProducts?.media}') : Image.asset(
                            'assets/images/product.png'),
                      ],
                    ),
                  ), // Banner, Back button, share button,
                  Container(
                    padding: const EdgeInsets.only(top: 30.0),
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
                                  isLiked: this.isFavourite,
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
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromRGBO(226, 226, 226, 0.7)
                                    )
                                )
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      setState(() {
                                        this.quantity = (this.quantity < 1) ? 0 : (this.quantity - 1);
                                        DatabaseManager().updateCart(productID: this.widget.productID, productQuantity: this.quantity, productTotalPrice: this.totalPrice);
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
                                        this.quantity = (this.quantity + 1);
                                        DatabaseManager().updateCart(productID: this.widget.productID, productQuantity: this.quantity, productTotalPrice: this.totalPrice);
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
                        DropDownItemGroups(title: "Product Detail", descriptions: "${dataProducts?.description}"),
                        DropDownItemGroups(title: "Nutritions", subTitle: "100gr"),
                        DropDownItemGroups(title: "Review", voteRate: 5.0),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: bottom_button, top: bottom_button), child: GestureDetector(
                    onTap: () {
                      DatabaseManager().insertCart(productID: this.widget.productID, productName: snapshot.data?.title, productDescription: snapshot.data?.description, productQuantity: this.quantity, productPrice: (snapshot.data?.price)?.toDouble(), productThumbnails: snapshot.data?.media, productTotalPrice: (snapshot.data?.price)?.toDouble());
                      Navigator.pushNamed(context, '/my-cart');
                    },
                    child: MyButton(
                      text: "Add To Basket",
                      textSize: 18.0,
                    ),
                  ))
                ],
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
