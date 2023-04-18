import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24).r,
            child: Column(
              children: [
                Image.asset(
                  ImageAssets.doctors,
                ),
                const UserTextField(
                  hintText: 'Enter Email',
                  icon: Icons.email,
                ),
                const UserTextField(
                  hintText: 'Enter Password',
                  icon: Icons.lock,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: Buttons(
                    buttonName: 'Log In',
                    onTap: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have any account? ',
                    ),
                    Text(
                      'Create Account',
                      style: getBoldStyle(
                        color: ColorManager.deepPurple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
