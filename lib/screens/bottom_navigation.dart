import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../resources/resources.dart';
import '../screens/screens.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  static final List<Widget> _widgetOption = [
    const HomeScreen(),
    const MessageScreen(),
    const ScheduleScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Consumer<BottomNavigationProvider>(
          builder: (context, value, child) {
            return _widgetOption[value.selectedIndex];
          },
        ),
      ),
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context, value, child) {
          return BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: ColorManager.grey,
            selectedItemColor: ColorManager.deepPurple,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.chat_bubble_text_fill,
                  ),
                  label: 'Messages'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                label: 'Schedule',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings',
              ),
            ],
            currentIndex: value.selectedIndex,
            onTap: (int index) {
              bottomNavigationProvider.changeIndex(index);
            },
          );
        },
      ),
    );
  }
}
