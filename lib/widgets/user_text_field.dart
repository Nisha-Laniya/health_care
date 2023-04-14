import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class UserTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const UserTextField({Key? key, required this.hintText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: ColorManager.deepPurple
                )
            )
        ),
      ),
    );
  }
}
