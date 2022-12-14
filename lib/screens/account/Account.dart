import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/controllers/logout.dart';
import 'package:food_app_v2/widgets/UserAvatar.dart';
import 'package:food_app_v2/core/SharePreferences.dart';



class Account extends StatefulWidget
{
  @override
  State<Account> createState() => _Account();
}


class _Account extends State<Account>
{

  bool ? logout;
  String ? email;
  String ? name;

  @override
  void initState() {
    super.initState();
    this.getInfo().then((value) {
      setState(() {

      });
    });
  }

  Future<void> getInfo() async {
    final dataUser  = SharedMyUser();
    this.email      = await dataUser.getEmail();
    this.name       = await dataUser.getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 25.0,
          right: 25.0
        ),
        child: myAccount(),
      ),
    );
  }

  Widget myAccount()
  {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            AccountInfo(),
            listItem(),
            Container(
            margin: const EdgeInsets.only(bottom: 25.0, top: 45.0),
            child: InkWell(
              onTap: () async {
                EasyLoading.show(status: 'Logout...');
                this.logout  = await logOutController();
                if (this.logout == true) {
                  setState(() {
                    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                  });
                } else {
                  EasyLoading.showToast("Error...");
                }
              },
              child: MyButton(
                text: "Log Out",
                icon: FontAwesomeIcons.signOut,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }

  Widget listItem()
  {
    return Column(
      children: [
        Item(Icon(FontAwesomeIcons.bagShopping),"Orders"),
        Item(Icon(FontAwesomeIcons.idCard),"My Details"),
        Item(Icon(FontAwesomeIcons.locationDot),"Delivery Address"),
        Item(Icon(FontAwesomeIcons.creditCard),"Payment Methods"),
        Item(Icon(FontAwesomeIcons.addressBook),"Promo Cord"),
        Item(Icon(FontAwesomeIcons.bell),"Notifecations"),
        Item(Icon(FontAwesomeIcons.question),"Help"),
        Item(Icon(FontAwesomeIcons.info),"About"),
      ],
    );
  }

  /* Avatar & Email */
  Widget AccountInfo() {
    return Container(
      padding: const EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: '#E2E2E2'.toColor()
            )
          )
      ),
      child: Row(
        children: [
          UserAvatar(),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MyText(
                      text: (this.name != null) ? this.name : "Afsar Hossen",
                      fontFamily: "Gilroy-Bold",
                      size: 20.0,
                      fontWeight: FontWeight.w100,
                    ), // Name
                    Container(
                      margin: const EdgeInsets.only(left: 6),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/edit-user');
                        },
                        icon: const Icon(FontAwesomeIcons.pencil, size: 13, color: Colors.green),
                      ),
                    ),
                  ],
                ), // Name & Edit button
                MyText(
                  text: (this.email != null) ? this.email : "Vxphuongictu998@gmail.com",
                  size: 13.0,
                  color: "#7c7c7c",
                )
              ],
            ),
          ), // Name & Email
        ],
      ),
    );
  }

/* Address */
  Widget Item(Icon icon,String title) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: '#E2E2E2'.toColor()
            )
          )
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: icon,
                ),
              ),
              Flexible(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  child: const Icon(
                      FontAwesomeIcons.angleRight
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}