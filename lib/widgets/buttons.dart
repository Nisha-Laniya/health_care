import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';

class Buttons extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const Buttons({Key? key, required this.buttonName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(buttonName, style: getSemiBoldStyle(color: ColorManager.white,fontSize: 20),),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(55),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),
        ),
      ),
    );
  }
}
