import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/data.dart';
import '../resources/resources.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0).r,
                child: Text(
                  'Schedule',
                  style: getBoldStyle(
                    fontSize: 30.sp,
                  ),
                ),
              ),
              buildTabBar(),
              SizedBox(
                height: 15.h,
              ),
              buildAboutDoctor()
            ],
          ),
        ),
      ),
    );
  }

  buildAboutDoctor() {
    return ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7, top: 20).r,
                        child: Text(
                          'About Doctor',
                          style: getBoldStyle(fontSize: 16.sp),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12).w),
                        child: Padding(
                          padding: const EdgeInsets.all(20).w,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Dr. Doctor Name',
                                        style: getBoldStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        'Therapist',
                                        style: getRegularStyle(
                                            color: ColorManager.grey1),
                                      ),
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      images[index],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10)
                                        .r,
                                child: Divider(
                                  color: ColorManager.grey1,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: ColorManager.grey1,
                                  ),
                                  Text(
                                    '12/01/2023',
                                    style: getRegularStyle(
                                      color: ColorManager.grey1,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    CupertinoIcons.clock_fill,
                                    color: ColorManager.grey1,
                                  ),
                                  Text(
                                    '10:30 AM',
                                    style: getRegularStyle(
                                      color: ColorManager.grey1,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 10.h,
                                    width: 10.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    ' Confirmed',
                                    style: getRegularStyle(
                                      color: ColorManager.grey1,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10).r,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: ColorManager
                                                .white
                                                .withOpacity(0.8),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10).w,
                                            )),
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(
                                            color: ColorManager.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10).w,
                                          ),
                                        ),
                                        child: const Text(
                                          'Reschedule',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                });
  }

  buildTabBar() {
    return Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 5).r,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12).w,
                ),
                child: TabBar(
                  labelColor: ColorManager.white,
                  unselectedLabelColor: ColorManager.grey,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12).w,
                    color: ColorManager.deepPurple,
                  ),
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 25).r,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Upcoming',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Canceled',
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}
