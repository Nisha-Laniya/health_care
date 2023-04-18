import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';
import '../resources/resources.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24).r,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigation(),
                        ),
                      );
                    },
                    child: Text(
                      'SKIP',
                      style: getBoldStyle(
                        color: ColorManager.deepPurple,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25).r,
                  child: Image.asset(
                    ImageAssets.doctors,
                  ),
                ),
                Text(
                  'Doctors Appointment',
                  style: getBoldStyle(
                    color: ColorManager.deepPurple,
                    fontSize: 25.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 15).r,
                  child: Text(
                    'Appoint Your Doctor',
                    style: getRegularStyle(),
                  ),
                ),
                Buttons(
                    buttonName: 'Log In',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    }),
                Buttons(
                    buttonName: 'Sign Up',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
