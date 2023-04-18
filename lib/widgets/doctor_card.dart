import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  const DoctorCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).w),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20).w,
          child: Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              const Spacer(),
              Text(
                'Dr. Doctor Name',
                style: getBoldStyle(),
              ),
              const Spacer(),
              Text(
                'Therapist',
                style: getMediumStyle(
                  color: ColorManager.grey,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: ColorManager.yellow,
                  ),
                  Text(
                    '4.9',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
