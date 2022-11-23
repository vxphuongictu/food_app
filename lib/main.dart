
import 'package:flutter/material.dart';
import 'package:food_app_v2/controllers/login.dart';
import 'package:food_app_v2/controllers/register.dart';
import 'package:food_app_v2/controllers/logout.dart';
import 'package:food_app_v2/controllers/listProducts.dart';
import 'package:food_app_v2/controllers/detailProducts.dart';
import 'package:food_app_v2/controllers/listOrders.dart';
import 'package:food_app_v2/core/SharePreferences.dart';
import 'package:food_app_v2/screens/home.dart';
import 'package:food_app_v2/widgets/MyButton.dart';
import 'package:food_app_v2/widgets/MyText.dart';

void main()
{
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyHomePage(),
    );
    // TODO: implement build
    throw UnimplementedError();
  }


}

class MyHomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<StatefulWidget>
{
  final TextEditingController _user   = TextEditingController();
  final TextEditingController _pass   = TextEditingController();
  final TextEditingController _name   = TextEditingController();
  final TextEditingController _confirm= TextEditingController();
  final myUser                        = MyUser();
  late bool loading                   = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Food app V2"),
        ),
        body: register(),
      ),
    );
  }
  Widget register()
  {
    return Column(
      children: [
        TextField(
          controller: _name,
          decoration: const InputDecoration(
            label: Text("Full name"),
          ),
        ),
        TextField(
          controller: _user,
          decoration: const InputDecoration(
            label: Text("Email"),
          ),
        ),
        TextField(
          controller: _pass,
          obscureText: true,
          decoration: const InputDecoration(
            label: Text("Password"),
          ),
        ),
        TextField(
          controller: _confirm,
          obscureText: true,
          decoration: const InputDecoration(
            label: Text("Confirm password"),
          ),
        ),
        MyButton(icon: Icons.fmd_good, width: 67.0, height: 67.0, borderRadius: 100.0,)
      ],
    );
  }

  Widget login()
  {
    return Column(
      children: [
        TextField(
          controller: _user,
          decoration: const InputDecoration(
            label: Text("User name"),
          ),
        ),
        TextField(
          controller: _pass,
          obscureText: true,
          decoration: const InputDecoration(
            label: Text("Password"),
          ),
        ),
        TextButton(
          onPressed: (){
            _login();
          },
          child: (loading)? CircularProgressIndicator(): Text("Log In"),
        )
      ],
    );
  }

  void _login() async {
    setState((){
      loading = true;
    });

    bool check =  await loginController(email: _user.text, password: _pass.text);

    setState((){
      loading = false;
    });

  }
}
