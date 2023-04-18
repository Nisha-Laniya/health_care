import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/screens.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: "/LoginScreen",
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: "/SignUpScreen",
    page: () => const SignUpScreen(),
  ),
  GetPage(
    name: "/HomeScreen",
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: "/ChatScreen",
    page: () => const ChatScreen(),
  ),
  GetPage(
    name: "/BottomNavigation",
    page: () => const BottomNavigation(),
  ),
];
