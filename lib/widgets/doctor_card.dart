import 'package:flutter/material.dart';
import 'package:healthcare_app/data/doctor_data.dart';
import 'package:healthcare_app/resources/asset_manager.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/resources/style_manager.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  const DoctorCard({Key? key, required this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
              Spacer(),
              Text('Dr. Doctor Name',style: getBoldStyle(),),
              Spacer(),
              Text('Therapist',style: getMediumStyle(color: ColorManager.grey),),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: ColorManager.yellow,),
                  Text('4.9'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
