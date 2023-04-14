import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';

class HomeContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Color containerColor;
  final Color circleColor;
  final Color titleColor;
  final Color subTitleColor;
  final Color borderColor;
  const HomeContainer({Key? key, required this.icon, required this.title, required this.subTitle, required this.containerColor, required this.circleColor, required this.titleColor, required this.subTitleColor, required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: containerColor,borderRadius: BorderRadius.circular(12),border: Border.all(color: borderColor,width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CircleAvatar(
                  child: Icon(icon,color: ColorManager.deepPurple,),
                  backgroundColor: circleColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: getBoldStyle(color: titleColor,fontSize: 18),),
                  Text(subTitle,style: getRegularStyle(color: subTitleColor.withOpacity(0.5)),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
