/*
 * Dependencies
 * flutter_slidable: ^2.0.0
 */

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/screens/account/AddNewLocation.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Delivery extends StatefulWidget
{
  const Delivery({super.key});

  @override
  State<Delivery> createState() {
    return _Delivery();
  }
}


class _Delivery extends State<Delivery>
{

  final double _sizeText  = 16.0;
  final Color borderColor = '#E2E2E2'.toColor();
  late Future<List> fetchDelivery;
  int ? _data             = 0;


  Future<dynamic> getData() async {
    return await SharedMyDelivery().currentLocation();
  }

  Future<void> removeItem(int ? locationID) async {
    await SharedMyDelivery().remove(locationID: locationID!);
  }

  void _refresh() {
    this.fetchDelivery    = SharedMyDelivery().getAll();
  }

  @override
  void initState() {
    super.initState();
    this._refresh();
    this.getData().then((value) {
      setState(() {
        if (value != null) this._data = value;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: MyText(
          text: "Delivery",
          fontFamily: "Gilroy-Bold",
          size: 20.0,
          fontWeight: FontWeight.w100,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: deliveryScreen(),
    );
  }

  Widget deliveryScreen()
  {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: "#e6e6e6".toColor()
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: MyText(
                  text: "Location",
                ),
              ),
              locationSelect(),
              addNew()
            ],
          )
      ),
    );
  }

  Widget addNew() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/new-location');
      },
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 70.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/new-location');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    color: "#ff6600".toColor(),
                  ),
                ),
                MyText(
                  text: "New location",
                  color: "#ff6600",
                ),
              ],
            ),
          )
      )
    );
  }

  Widget locationSelect()
  {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: this.borderColor,
            width: 1
          )
        )
      ),
      child: FutureBuilder<List>(
        future: this.fetchDelivery,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final data        = snapshot.data?[index];
                return Slidable(
                  key: UniqueKey(),
                  endActionPane: ActionPane(
                    dismissible: DismissiblePane(
                      onDismissed: () async {
                        EasyLoading.show(status: "Deleting ...");
                        await removeItem(data.locatedID);
                        this.fetchDelivery    = SharedMyDelivery().getAll();
                        this.getData().then((value) {
                          setState(() {
                            if (value != null) this._data = value;
                          });
                        });
                        EasyLoading.dismiss();
                      },
                    ),
                    motion: const ScrollMotion(),
                    children: const [
                      SlidableAction(
                        onPressed: null,
                        backgroundColor: Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: locationItem(
                      locationID: data.locatedID,
                      fullname: data.fullname,
                      isDefault: data.isDefault,
                      location: data.country,
                      street: data.street,
                      phoneNumber: data.phoneNumber,
                      isLastElement: (index.toInt() >= (snapshot.data?.length)!.toInt() - 1) ? true : false,
                    ),
                );
              }
            );
          }
          return const SizedBox();
        },
      )
    );
  }

  Widget locationItem({required int ? locationID, String ? fullname, String ? phoneNumber, String ? location, String ? street, bool ? isDefault = false, bool ? isLastElement = false})
  {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: ListTile(
        leading: Radio<int>(
          onChanged: (int ? value) async {
            EasyLoading.show(status: "Updating...");
            setState(() {
              this._data = value;
            });
            await SharedMyDelivery().selected(locationID: value!);
            EasyLoading.dismiss();
            Navigator.pop(context);
          },
          value: locationID!,
          groupValue: this._data,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 1,
                            color: borderColor,
                          ),
                        )
                    ),
                    child: MyText(
                      text: "${fullname}",
                      size: this._sizeText,
                    ),
                  ),
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: MyText(
                          text: "${phoneNumber}",
                          size: this._sizeText,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            AddNewLocation(locationID: locationID)),
                      ).then((_) {
                        print('object');
                        setState(() {});
                      });
                    },
                    child: MyText(
                      text: "Edit",
                      color: "#ff6600",
                      size: this._sizeText,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: MyText(
                text: "${location}",
                color: "#d9d9d9",
                size: this._sizeText,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: MyText(
                text: "${street}",
                color: "d9d9d9",
                size: this._sizeText,
              ),
            ),
            if (isDefault == true) Container(
                width: 50.0,
                height: 20.0,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: '#ff6600'.toColor()
                    )
                ),
                child: Center(
                  child: MyText(
                      text: "Default",
                      size: 11.0,
                      centerText: true,
                      color: '#ff6600'
                  ),
                )
            ),
            if (isLastElement == false) Container(
              padding: const EdgeInsets.only(bottom: 15.0),
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1,
                        color: this.borderColor
                    ),
                  )
              ),
            )
          ],
        )
      ),
    );
  }
}