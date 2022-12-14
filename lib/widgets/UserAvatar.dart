/*
 * Dependencies
 * editable_image: ^1.1.0
 */

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:editable_image/editable_image.dart';
import 'package:food_app_v2/controllers/userImage.dart';

class UserAvatar extends StatefulWidget
{

  @override
  State<UserAvatar> createState() {
    return _UserAvatar();
  }
}

class _UserAvatar extends State<UserAvatar>
{

  File ? _profilePicFile;

  void _changeImage(File ? file) async {
    if (file == null) return;
    setState(() {
      _profilePicFile = file;
    });
    updateImage(file);
  }

  @override
  Widget build(BuildContext context) {
    return avatar();
  }

  Widget avatar()
  {
    return EditableImage(
      // Define the method that will run on the change process of the image.
      onChange: (file) => _changeImage(file),

      // Define the source of the image.
      image: _profilePicFile != null
          ? Image.file(_profilePicFile!, fit: BoxFit.cover)
          : Image.network('https://i.pinimg.com/originals/f4/7b/9a/f47b9acecd520dd5a78d0218449a4985.jpg', fit: BoxFit.cover,),

      // Define the size of EditableImage.
      size: 80.0,

      // Define the Theme of image picker.
      imagePickerTheme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.white,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white70,
        iconTheme: const IconThemeData(color: Colors.black87),

        // Define the default font family.
        fontFamily: 'Georgia',
      ),

      // Define the border of the image if needed.
      imageBorder: Border.all(color: Colors.black87, width: 2.0),

      // Define the border of the icon if needed.
      editIconBorder: Border.all(color: Colors.black87, width: 2.0),
    );
  }

}