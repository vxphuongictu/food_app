/*
 * Dependencies
 * editable_image: ^1.1.0
 */


import 'dart:html';

import 'package:flutter/material.dart';
import 'package:editable_image/editable_image.dart';

class UserAvatar extends StatefulWidget
{
  @override
  State<UserAvatar> createState() {
    return _UserAvatar();
  }
}

class _UserAvatar extends State<UserAvatar>
{

  late File ? _profilePicFile;

  void _changeImage(File ? file) async {
    if (file == null) return;
    _profilePicFile = file;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: avatar(),
    );
  }

  Widget avatar()
  {
    return EditableImage(
      onChange: (file) => _changeImage(file),
    );
  }

}