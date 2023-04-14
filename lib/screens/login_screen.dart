import 'package:flutter/material.dart';
import 'package:healthcare_app/resources/asset_manager.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/widgets/buttons.dart';
import 'package:healthcare_app/widgets/user_text_field.dart';

import '../resources/style_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
              child: Column(
                children: [
                  Image.asset(ImageAssets.doctors),
                  UserTextField(hintText: 'Enter Email', icon: Icons.email),
                  UserTextField(hintText: 'Enter Password', icon: Icons.lock),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Buttons(buttonName: 'Log In', onTap: () {}),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have any account? '),
                      Text('Create Account',style: getBoldStyle(color: ColorManager.deepPurple),),
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
