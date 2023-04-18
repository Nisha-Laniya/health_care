import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  const DoctorCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 15,),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          )
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          Text('Dr. Doctor Name',style: getBoldStyle(fontSize: 14.sp),),
          Text('Therapist',style: getMediumStyle(color: ColorManager.grey,fontSize: 12.sp),),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,color: ColorManager.yellow,size: 22.sp,),
              Text('4.9',style: getRegularStyle(fontSize: 12.sp),)
            ],
          )
        ],
      ),
    );
    // return Card(
    //   elevation: 7,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).w),
    //   child: Center(
    //     child: Padding(
    //       padding: const EdgeInsets.all(20).w,
    //       child: Column(
    //         children: [
    //           CircleAvatar(
    //             radius: 25,
    //             backgroundImage: AssetImage(
    //               image,
    //             ),
    //           ),
    //           const Spacer(),
    //           Text(
    //             'Dr. Doctor Name',
    //             style: getBoldStyle(),
    //           ),
    //           const Spacer(),
    //           Text(
    //             'Therapist',
    //             style: getMediumStyle(
    //               color: ColorManager.grey,
    //             ),
    //           ),
    //           const Spacer(),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const [
    //               Icon(
    //                 Icons.star,
    //                 color: ColorManager.yellow,
    //               ),
    //               Text(
    //                 '4.9',
    //               ),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
