
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/resources/asset_manager.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/resources/style_manager.dart';
import 'package:healthcare_app/screens/setting_screen.dart';
import 'package:healthcare_app/widgets/doctor_card.dart';
import 'package:healthcare_app/widgets/home_container.dart';

import '../data/doctor_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Nisha',
                      style: getBoldStyle(fontSize: 25),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(ImageAssets.doctor1),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
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
                      const SizedBox(
                        width: 20,
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
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: Text('What are your symptoms?',style: getBoldStyle(color: ColorManager.grey,fontSize: 20),),
                ),
                DefaultTabController(
                    length: 5,
                    child: ButtonsTabBar(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      tabs: [
                        Tab(text: 'Temperature'),
                        Tab(text: 'Snuffle',),
                        Tab(text: 'Fever',),
                        Tab(text: 'Cough'),
                        Tab(text: 'Cold',),
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: Text('Popular Doctors',style: getBoldStyle(color: ColorManager.grey,fontSize: 20),),
                ),
                // GridView.count(
                //   shrinkWrap: true,
                //     physics: NeverScrollableScrollPhysics(),
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 4.0,
                //     mainAxisSpacing: 8.0,
                //   children: List.generate(doctors.length, (index) {
                //     return Center(
                //       child: DoctorCard(doctor: doctors[index],),
                //     );
                // }),
                // // ),
                // )
                GridView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0,
                      // childAspectRatio: width/(height/1.3)
                    ),
                    itemBuilder: (context,index) {
                      return DoctorCard(image: images[index],);
                    }
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: ColorManager.grey,
        selectedItemColor: ColorManager.deepPurple,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Messages'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
