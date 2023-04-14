import 'package:flutter/material.dart';
import 'package:healthcare_app/resources/asset_manager.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/resources/style_manager.dart';
import 'package:healthcare_app/screens/signup_screen.dart';
import 'package:healthcare_app/widgets/buttons.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Text('Skip',style: getBoldStyle(color: ColorManager.deepPurple)))),
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 25),
                  child: Image.asset(ImageAssets.doctors),
                ),
                Text('Doctors Appointment',style: getBoldStyle(color: ColorManager.deepPurple,fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 15),
                  child: Text('Appoint Your Doctor',style: getRegularStyle(),),
                ),
                Buttons(buttonName: 'Log In', onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
                Buttons(buttonName: 'Sign Up', onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
