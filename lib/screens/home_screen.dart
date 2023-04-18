import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/data.dart';
import '../screens/screens.dart';
import '../resources/resources.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Nisha',
                    style: getBoldStyle(fontSize: 25.sp),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(ImageAssets.doctor1),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25).r,
              child: Row(
                children: [
                  const HomeContainer(
                    icon: Icons.add,
                    title: 'Clinic Visit',
                    subTitle: 'Make an appointment',
                    containerColor: ColorManager.deepPurple,
                    circleColor: ColorManager.white,
                    titleColor: ColorManager.white,
                    subTitleColor: ColorManager.white,
                    borderColor: ColorManager.deepPurple,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  HomeContainer(
                    icon: Icons.home,
                    title: 'Home Visit',
                    subTitle: 'Call the doctor home',
                    containerColor: ColorManager.white.withOpacity(0.5),
                    circleColor: ColorManager.deepPurple.withOpacity(0.2),
                    titleColor: ColorManager.black,
                    subTitleColor: ColorManager.black,
                    borderColor: ColorManager.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10).r,
              child: Text(
                'What are your symptoms?',
                style: getBoldStyle(
                  color: ColorManager.grey,
                  fontSize: 20.sp,
                ),
              ),
            ),
            DefaultTabController(
                length: 5,
                child: ButtonsTabBar(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20).r,
                  tabs: const [
                    Tab(
                      text: 'Temperature',
                    ),
                    Tab(
                      text: 'Snuffle',
                    ),
                    Tab(
                      text: 'Fever',
                    ),
                    Tab(
                      text: 'Cough',
                    ),
                    Tab(
                      text: 'Cold',
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10).r,
              child: Text(
                'Popular Doctors',
                style: getBoldStyle(
                  color: ColorManager.grey,
                  fontSize: 20.sp,
                ),
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  // childAspectRatio: width/(height/1.3)
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      image: images[index],
                                    )));
                      },
                      child: DoctorCard(
                        image: images[index],
                      ));
                })
          ],
        ),
      ),
    );
  }
}
