import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/widgets/MyText.dart';

class DropDownItemGroups extends StatefulWidget
{

  late String ? title;
  late String ? subTitle;
  late String ? descriptions;
  late double ? voteRate;


  DropDownItemGroups({super.key, this.title = null, this.subTitle = null, this.descriptions = null, this.voteRate = null});


  @override
  State<DropDownItemGroups> createState() {
    return _DropDownItemGroups();
  }
}

class _DropDownItemGroups extends State<DropDownItemGroups>
{

  bool isExpaned = false;

  @override
  Widget build(BuildContext context) {
    return mainItem();
  }


  Widget mainItem()
  {
    return Container(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(226, 226, 226, 0.7)
              )
          )
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: MyText(
                  text: (this.widget.title != null) ? this.widget.title : '',
                  size: 16.0,
                ),
              ),
              if (this.widget.subTitle != null) Container(
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
                  text: this.widget.subTitle,
                  size: 9.0,
                ),
              ),
              if (this.widget.voteRate != null) RatingBar.builder(
                initialRating: this.widget.voteRate!,
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
              Container(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      this.isExpaned = (this.isExpaned) ? false : true;
                    });
                  },
                  icon: (this.isExpaned == true) ? const FaIcon(
                    FontAwesomeIcons.angleDown,
                    size: 20,
                  ) : const FaIcon(
                    FontAwesomeIcons.angleRight,
                    size: 20,
                  ),
                )
              ),
            ],
          ),
          AnimatedContainer(
            duration: const Duration(
                milliseconds: 400
            ),
            curve: Curves.fastOutSlowIn,
            height: (this.isExpaned == false) ? 0 : 20.0,
            child: MyText(
              text: (this.widget.descriptions != null) ? this.widget.descriptions : '',
              fontFamily: 'Gilroy-Medium',
              size: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}