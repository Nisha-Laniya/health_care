import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class Buttons extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const Buttons({Key? key, required this.buttonName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15).r,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0).w,
          ),
        ),
        child: Text(
          buttonName,
          style: getSemiBoldStyle(
            color: ColorManager.white,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
