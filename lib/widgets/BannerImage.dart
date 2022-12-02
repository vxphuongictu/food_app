/*
 * dependencies:
 * banner_carousel: ^1.2.1
 */

import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:food_app_v2/controllers/myBanners.dart';
import 'package:food_app_v2/models/MyBanner.dart';
import 'package:food_app_v2/core/config.dart';


class BannerImage extends StatefulWidget {
  const BannerImage({super.key});

  @override
  State<BannerImage> createState() {
    return _BannerImage();
  }
}


class _BannerImage extends State<BannerImage>
{
  late Future<List<MyBanner>> listBanner;
  List<BannerModel> ? bannerList = [];

  @override
  void initState() {
    super.initState();
    listBanner = fetchBanner();
  }

  @override
  Widget build(BuildContext context) {
    return bannerWidget();
  }


  Widget bannerWidget()
  {
    return FutureBuilder<List<MyBanner>>(
      future: listBanner,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (bannerList!.isEmpty) {
            var countBanner   = 0;
            for (var banner in snapshot.data!) {
              countBanner++;
              final item = BannerModel(
                  imagePath: "${host}${banner.url_img}",
                  id: countBanner.toString()
              );

              bannerList?.add(item);
            }
          }
          return BannerCarousel(
              banners: bannerList,
              margin: EdgeInsets.zero,
              indicatorBottom: false,
              animation: true,
              activeColor: Colors.green,
              disableColor: Colors.grey,
              borderRadius: 10
          );
        } else {
          return BannerCarousel(
              banners: bannerList,
              margin: EdgeInsets.zero,
              indicatorBottom: false,
              animation: true,
              activeColor: Colors.green,
              disableColor: Colors.grey,
              borderRadius: 10
          );
        }
      },
    );
  }
}