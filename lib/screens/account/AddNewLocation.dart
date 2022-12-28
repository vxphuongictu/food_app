import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyInput.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/TypeOfLocation.dart';
import 'package:food_app_v2/widgets/SwitchGroup.dart';


class AddNewLocation extends StatefulWidget
{

  late int ? locationID = null;

  AddNewLocation({this.locationID = null});

  @override
  State<AddNewLocation> createState() {
    return _AddNewLocation();
  }
}


class _AddNewLocation extends State<AddNewLocation>
{

  final double _sizeText    = 16.0;
  final Color borderColor   = '#E2E2E2'.toColor();
  final double heightItem   = 50.0;

  bool officeSelected       = true;
  bool privateHouseSelected = false;
  bool setDefaultAddress    = true;
  bool setPickupAddress     = false;
  bool setShippingAddress   = false;
  int locationType          = 1;

  TextEditingController fullname      = TextEditingController();
  TextEditingController phoneNumber   = TextEditingController();
  TextEditingController country       = TextEditingController();
  TextEditingController street        = TextEditingController();

  void _setDefaultCallback(bool action)
  {
    setState(() {
      this.setDefaultAddress = action;
    });
  }

  void _setPickupCallback(bool action)
  {
    setState(() {
      this.setPickupAddress = action;
    });
  }
  
  void _setShippingCallback(bool action)
  {
    setState(() {
      this.setShippingAddress = action;
    });
  }

  Future<void> fetchData() async {
    await SharedMyDelivery().get(locationID: this.widget.locationID!).then((value){
      this.fullname.text      = value.fullname;
      this.phoneNumber.text   = value.phoneNumber;
      this.country.text       = value.country;
      this.street.text        = value.street;
      this.setDefaultAddress  = value.isDefault;
      this.setPickupAddress   = value.isPickup;
      this.setShippingAddress = value.isShipping;
      this.locationType       = value.type;

      if (this.locationType == 1) {
        this.privateHouseSelected = true;
        this.officeSelected       = false;
      } else {
        this.privateHouseSelected = false;
        this.officeSelected       = true;
      }
    });
  }


  @override
  void initState() {
    if (this.widget.locationID != null) {
      this.fetchData().then((value) {
        setState(() {});
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "#e6e6e6".toColor(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: MyText(fontFamily: "Gilroy-Bold",
          size: 20.0,
          text: (this.widget.locationID == null) ? "New Location" : "Edit Location",

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
      body: AddNewLocationScreen(),
    );
  }

  Widget AddNewLocationScreen()
  {
    return SingleChildScrollView(
      child: Column(
        children: [
          contact(),
          location(),
          settings(),
          Container(
            margin: const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
            child: GestureDetector(
             onTap: () async {
               EasyLoading.show(status: "Saving ...");
               if (this.privateHouseSelected) this.locationType = 1;
               if (this.officeSelected) this.locationType = 0;
               
               await SharedMyDelivery().add(
                  locatedID: this.widget.locationID,
                  fullname: this.fullname.text,
                  phoneNumber: this.phoneNumber.text,
                  country: this.country.text,
                  isDefault: this.setDefaultAddress,
                  isPickup: this.setPickupAddress,
                  isShipping: this.setShippingAddress,
                  street: this.street.text,
                  locationType: this.locationType,
               );
               
               EasyLoading.dismiss();
               Navigator.pop(context);
             },
              child: MyButton(
                text: "Save",
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget contact()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0),
          alignment: Alignment.centerLeft,
          height: this.heightItem,
          child: MyText(
            text: "Contact",
            size: this._sizeText,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                height: this.heightItem,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: .2
                    )
                  )
                ),
                child: MyInput(
                  placeholder: "Full name",
                  fontSize: this._sizeText,
                  icon: Icons.person,
                  inputBorder: false,
                  valueInput: this.fullname,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: SizedBox(
                  height: this.heightItem,
                  child: MyInput(
                    placeholder: "Phone number",
                    fontSize: this._sizeText,
                    icon: Icons.phone,
                    inputBorder: false,
                    valueInput: this.phoneNumber,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget location()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0),
          alignment: Alignment.centerLeft,
          height: this.heightItem,
          child: MyText(
            text: "Location",
            size: this._sizeText,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: .2
                        )
                    )
                ),
                child: MyInput(
                  placeholder: "Your country",
                  fontSize: this._sizeText,
                  icon: Icons.location_on,
                  inputBorder: false,
                  valueInput: this.country,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: SizedBox(
                  height: this.heightItem,
                  child: MyInput(
                    placeholder: "Name of street",
                    fontSize: this._sizeText,
                    icon: Icons.near_me,
                    inputBorder: false,
                    valueInput: this.street,
                  ),
                )
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget settings()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15.0),
          alignment: Alignment.centerLeft,
          height: this.heightItem,
          child: MyText(
            text: "Settings",
            size: this._sizeText,
          ),
        ),
        Container(
          height: this.heightItem,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                      width: .2
                  )
              )
          ),
          child: typeOfLocation(),
        ),
        Container(
          height: this.heightItem,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                    width: .2
                )
            )
          ),
          child: SwitchGroup(label: "Set as default address", isOn: this.setDefaultAddress, callback: _setDefaultCallback),
        ),
        Container(
          height: this.heightItem,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                    width: .2
                )
            )
          ),
          child: SwitchGroup(label: "Set as pickup address", isOn: this.setPickupAddress, callback: _setPickupCallback),
        ),
        Container(
          height: this.heightItem,
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SwitchGroup(label: "Set as the shipping address", isOn: this.setShippingAddress, callback: _setShippingCallback),
        ),
      ],
    );
  }

  Widget typeOfLocation()
  {
    return Row(
      children: [
        Expanded(
          child: MyText(
            text: "Type",
            size: this._sizeText,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                this.officeSelected = !this.officeSelected;
                if (this.privateHouseSelected == true) this.privateHouseSelected = false;
              });
            },
            child: TypeOfLocation(name: "Office", isSelected: this.officeSelected),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              this.privateHouseSelected = !this.privateHouseSelected;
              if (this.officeSelected == true) this.officeSelected = false;
            });
          },
          child: TypeOfLocation(name: "Private house", isSelected: this.privateHouseSelected),
        ),
      ],
    );
  }

}