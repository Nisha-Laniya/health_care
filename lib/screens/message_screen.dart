import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../data/data.dart';
import '../resources/resources.dart';
import '../widgets/widgets.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0).r,
              child: Text(
                'Messages',
                style: getBoldStyle(
                  fontSize: 30.sp,
                ),
              ),
            ),
            const UserTextField(
              hintText: 'Search',
              icon: Icons.search,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: Text(
                'Active Now',
                style: getBoldStyle(
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            buildActiveDoctor(),
            Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: Text(
                'Recent Chat',
                style: getBoldStyle(
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            buildRecentChatList(),
          ],
        ),
      ),
    );
  }

  ListView buildRecentChatList() {
    return ListView.builder(
              itemCount: messageImages.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                      Get.toNamed('/ChatScreen');
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        messageImages[index],
                      ),
                    ),
                    title: Text(
                      'Dr.Doctor Name',
                      style: getBoldStyle(),
                    ),
                    subtitle: const Text(
                      'Hello, Doctor are you there?',
                    ),
                    trailing: const Text(
                      '12:30',
                    ),
                  ),
                );
              });
  }

  SizedBox buildActiveDoctor() {
    return SizedBox(
            height: 50.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: messageImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10).r,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(messageImages[index]),
                        ),
                        Positioned(
                          right: 5,
                          child: Container(
                            height: 12.h,
                            width: 10.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManager.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          );
  }
}
