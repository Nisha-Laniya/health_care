import 'package:flutter/material.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/resources/style_manager.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  const SettingTile({Key? key, required this.title, required this.backgroundColor, required this.iconColor, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon,color: iconColor,),
        backgroundColor: backgroundColor,
      ),
      title: Text(title,style: getSemiBoldStyle(fontSize: 16),),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
