/*
 * Dependencies
 * date_time_picker: ^2.1.0
 */


import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyInput.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/UserAvatar.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/models/GenderSelect.dart';
import 'package:food_app_v2/widgets/InputLabel.dart';
import 'package:food_app_v2/controllers/updateUser.dart';


class EditUser extends StatefulWidget
{
  @override
  State<EditUser> createState() {
    return _EditUser();
  }
}


class _EditUser extends State<EditUser>
{
  String ? email;
  int sex = 0;
  GenderSelect ? gender;
  TextEditingController nameInput = TextEditingController();
  TextEditingController addressInput = TextEditingController();
  TextEditingController birthdayInput = TextEditingController(text: "1998-07-25");

  Future<void> fetchData() async {
    final SharedUser = SharedMyUser();
    SharedUser.getEmail().then((value){
      this.email = value;
    });

    SharedUser.getName().then((value){
      this.nameInput.text = ((value != "") ? value : "Vũ Xuân Phương")!;
    });

    SharedUser.getGender().then((value) {
      if (value != null) this.sex = value;
    });

    SharedUser.getAddress().then((value) {
      if (value != null) this.addressInput.text = value;
    });


    SharedUser.getBirthday().then((value) {
      if (value != null) this.birthdayInput.text = value;
    });

    this.addressInput.text = "Thái Nguyên";
  }

  Future<void> _refresh() async {
    this.fetchData().then((value) {
      setState(() {

      });
    });
  }

  List<GenderSelect> listOptions = <GenderSelect>[
    GenderSelect(value: 'female', key: 0),
    GenderSelect(value: 'male', key: 1)
  ];

  @override
  void initState() {
    super.initState();
    this.fetchData().then((value) {
      setState(() {
        this.gender = this.listOptions[this.sex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: '#181725'.toColor(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: MyText(
          text: "Edit Profile",
          fontFamily: "Gilroy-Bold",
          size: 20.0,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
          minimum: EdgeInsets.only(left: 30.0, right: 30.0),
          child: myUser(),
        ),
      ),
    );
  }

  Widget myUser()
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: UserAvatar(size: 120.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: MyText(
              text: (this.nameInput.text != "") ? this.nameInput.text : "Vũ Xuân Phương",
              size: 20.0,
              maxLines: 1,
              fontFamily: "Gilroy-Bold",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: MyText(
              text: (this.email != "") ? this.email : "Vxphuongictu998@gmail.com",
              fontFamily: "Gilroy-Regular",
              size: 16.0,
              color: "#7C7C7C",
            ),
          ),
          formGroupEditor(),
          Container(
            margin: EdgeInsets.only(top: 60.0),
            child: InkWell(
              onTap: () async {
                EasyLoading.show(status: "Updating ...");
                await updateUser(name: this.nameInput.text, address: this.addressInput.text, birthday: this.birthdayInput.text, gender: this.gender?.key);
                await SharedMyUser().set(name: this.nameInput.text, gender: this.gender?.key, address: this.addressInput.text, birthday: this.birthdayInput.text);
                EasyLoading.dismiss();
              },
              child: MyButton(
                text: "Update",
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget formGroupEditor()
  {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          MyInput(
            label: "Your Name",
            valueInput: this.nameInput,
            placeholder: "What is your name?",
          ),
          MyInput(
            label: "Your Address",
            valueInput: this.addressInput,
            placeholder: "Where is your address?",
          ),
          selectOptions(),
          birthDay(),
        ],
      ),
    );
  }

  Widget selectOptions()
  {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          InputLable(label: "Sex"),
          DropdownButtonFormField<dynamic>(
            isExpanded: true,
            value: this.gender,
            items: this.listOptions.map((e){
              return DropdownMenuItem(
                value: e,
                child: MyText(
                  text: "${e.value}",
                ),
              );
            }).toList(),
            onChanged: (value) => setState(() {
              this.gender = value;
            }),
          )
        ],
      ),
    );
  }
  
  Widget birthDay()
  {
    return Column(
      children: [
        InputLable(label: "Birthday"),
        DateTimePicker(
          dateMask: 'dd MMM, yyyy',
          firstDate: DateTime(1960),
          lastDate: DateTime(2023),
          controller: this.birthdayInput,
          onChanged: (value) => setState(() {
            this.birthdayInput.text = value;
          }),
        )
      ],
    );
  }
}