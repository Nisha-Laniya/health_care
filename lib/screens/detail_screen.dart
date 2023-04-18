import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';
import '../data/data.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  const DetailScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.deepPurple,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0).w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: ColorManager.white,
                      ),
                    ),
                    const Icon(
                      Icons.more_vert_rounded,
                      color: ColorManager.white,
                    ),
                  ],
                ),
              ),
              buildTopContainer(),
              buildBottomContainer()
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomContent(),
    );
  }

  buildBottomContent() {
    return Container(
      height: 120.h,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Consultation Price',
                  style: getRegularStyle(color: ColorManager.grey),
                ),
                Text(
                  '\$100',
                  style: getSemiBoldStyle(
                      color: ColorManager.grey, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Book Appointment',
              ),
            )
          ],
        ),
      ),
    );
  }

  buildBottomContainer() {
    return Container(
              height: 400.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Doctor',
                      style: getSemiBoldStyle(
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0).r,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the [rinting and typescripting industry',
                        style: getRegularStyle(
                          color: ColorManager.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reviews  ',
                              style: getSemiBoldStyle(fontSize: 18.sp),
                            ),
                            const Icon(
                              Icons.star,
                              color: ColorManager.yellow,
                            ),
                            Text(
                              ' 4.9 ',
                              style: getBoldStyle(fontSize: 18.sp),
                            ),
                            Text(
                              '(124)',
                              style: getRegularStyle(
                                color: ColorManager.deepPurple,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'See all',
                          style: getSemiBoldStyle(
                            color: ColorManager.deepPurple,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 130.h,
                      child: ListView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 280.w,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0).r,
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(12).w),
                                child: Padding(
                                  padding: const EdgeInsets.all(15).w,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                              images[index],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8.0,
                                            ).r,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Dr. Doctor Name',
                                                  style: getBoldStyle(),
                                                ),
                                                Text(
                                                  '1 day ago',
                                                  style: getRegularStyle(
                                                    color: ColorManager.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.star,
                                            color: ColorManager.yellow,
                                          ),
                                          Text(
                                            '4.9',
                                            style: getRegularStyle(
                                              color: ColorManager.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'Many thanks to Dr.dear. He is a great and professional doctor',
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Location',
                      style: getSemiBoldStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor:
                            ColorManager.deepPurple.withOpacity(0.2),
                        child: const Icon(
                          Icons.location_on,
                          color: ColorManager.deepPurple,
                        ),
                      ),
                      title: Text(
                        'New York, Medical Center',
                        style: getSemiBoldStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle:
                          const Text('address line of the medical center,'),
                    )
                  ],
                ),
              ),
            );
  }

  buildTopContainer() {
    return Container(
              height: 180.h,
              width: double.infinity,
              decoration: const BoxDecoration(color: ColorManager.deepPurple),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(image),
                  ),
                  const Spacer(),
                  Text(
                    'Dr. Doctor Name',
                    style: getBoldStyle(
                      color: ColorManager.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0).r,
                    child: Text(
                      'Therapist',
                      style: getMediumStyle(
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white.withOpacity(0.2),
                        child: const Icon(
                          Icons.call,
                          color: ColorManager.white,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CircleAvatar(
                        backgroundColor: ColorManager.white.withOpacity(0.2),
                        child: const Icon(
                          CupertinoIcons.chat_bubble_text_fill,
                          color: ColorManager.white,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            );
  }
}
