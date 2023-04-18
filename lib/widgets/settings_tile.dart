import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  const SettingTile(
      {Key? key,
      required this.title,
      required this.backgroundColor,
      required this.iconColor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: getSemiBoldStyle(
          fontSize: 16.sp,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
