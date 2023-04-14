import 'package:flutter/material.dart';
import 'package:healthcare_app/resources/asset_manager.dart';
import 'package:healthcare_app/resources/color_manager.dart';
import 'package:healthcare_app/resources/style_manager.dart';
import 'package:healthcare_app/widgets/settings_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Settings',
              style: getBoldStyle(fontSize: 25),
            )),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(ImageAssets.doctor1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Doctor Name",
                          style: getBoldStyle(fontSize: 18),
                        ),
                        Text(
                          'Profile',
                          style: getRegularStyle(color: ColorManager.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Divider(),
              ),
              SettingTile(
                  title: 'Profile',
                  backgroundColor: ColorManager.blue.withOpacity(0.2),
                  iconColor: ColorManager.blue,
                  icon: Icons.person_outline,
              ),
              SettingTile(
                title: 'Notifications',
                backgroundColor: ColorManager.deepPurple.withOpacity(0.2),
                iconColor: ColorManager.deepPurple,
                icon: Icons.notifications_none_sharp,
              ),
              SettingTile(
                title: 'Privacy',
                backgroundColor: ColorManager.indigo.withOpacity(0.2),
                iconColor: ColorManager.indigo,
                icon: Icons.privacy_tip_outlined,
              ),
              SettingTile(
                title: 'General',
                backgroundColor: ColorManager.green.withOpacity(0.2),
                iconColor: ColorManager.green,
                icon: Icons.settings,
              ),
              SettingTile(
                title: 'About Us',
                backgroundColor: ColorManager.yellow1.withOpacity(0.2),
                iconColor: ColorManager.yellow1,
                icon: Icons.warning_amber_rounded,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Divider(),
              ),
              SettingTile(
                title: 'Log Out',
                backgroundColor: ColorManager.orange.withOpacity(0.2),
                iconColor: ColorManager.orange,
                icon: Icons.logout_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
