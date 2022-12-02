import 'package:flutter/material.dart';
import 'package:food_app_v2/function/toColor.dart';
import 'package:food_app_v2/widgets/MyText.dart';
import 'package:food_app_v2/widgets/MyButton.dart';

/*
 * pop_bottom_menu: ^1.0.0
 */


class Filter extends StatefulWidget {

  @override
  State<Filter> createState() => _Filter();
}

class _Filter extends State<Filter>
{

  /* Categrories */
  bool ? eggsCheckbox     = true;
  bool ? noodlesCheckbox  = false;
  bool ? chipsCheckbox    = false;
  bool ? fastFoodCheckbox = false;

  /* Brand */

  bool ? individualCheckbox   = false;
  bool ? cocolaCheckbox       = true;
  bool ? ifadCheckBox         = false;
  bool ? kaziCheckBox         = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 150.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => setState(() {
            Navigator.pop(context);
          }),
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: MyText(
          text: "Filters",
          fontFamily: "Gilroy-Bold",
          fontWeight: FontWeight.w100,
        )
      ),
      body: showMenu(),
    );
  }

  Widget showMenu()
  {
    return SingleChildScrollView(
      child: StatefulBuilder(builder: (context, newState){
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 243, 242, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
            width: double.infinity,
            child: Column(
                children: [ //
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: MyText(
                          text: "Categories",
                        ),
                      ),
                      CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          activeColor: '#53B175'.toColor(),
                          value: eggsCheckbox,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Eggs"),
                          onChanged: (bool ? value){
                            newState(() {
                              eggsCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: noodlesCheckbox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Noodles & Pasta"),
                          onChanged: (bool ? value){
                            newState(() {
                              noodlesCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: chipsCheckbox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Chips & Crisps"),
                          onChanged: (bool ? value){
                            newState(() {
                              chipsCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: fastFoodCheckbox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Fast Food"),
                          onChanged: (bool ? value){
                            newState(() {
                              fastFoodCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                    ],
                  ), // Categories
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 40.0),
                          width: double.infinity,
                          child: MyText(
                            text: "Brand",
                          )
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: individualCheckbox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Individual Callection"),
                          onChanged: (bool ? value){
                            newState(() {
                              individualCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: cocolaCheckbox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Cocola"),
                          onChanged: (bool ? value){
                            newState(() {
                              cocolaCheckbox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: ifadCheckBox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Ifad"),
                          onChanged: (bool ? value){
                            newState(() {
                              ifadCheckBox = value;
                              print(value);
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          value: kaziCheckBox,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text("Kazi Farmas"),
                          onChanged: (bool ? value){
                            newState(() {
                              kaziCheckBox = value;
                              print(value);
                            });
                          }
                      ),
                    ],
                  ), // Brand
                  Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: const EdgeInsets.only(bottom: 40.0),
                            height: 67.0,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(83, 177, 117, 1),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(19.0)
                                )
                            ),
                            child: InkWell(
                              onTap: () {
                                print("Filter");
                              },
                              child: MyButton(
                                text: "Apply Filter",
                              ),
                            )
                        ),
                      )
                  ),
                ]
            ),
          ),
        );
      }),

    );
  }
}