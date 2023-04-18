import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/widgets.dart';
import '../resources/resources.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.w,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                ImageAssets.doctor1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0).r,
              child: Text(
                'Dr. Doctor Name',
                style: getSemiBoldStyle(
                  color: ColorManager.white,
                  fontSize: 16.sp,
                ),
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15).r,
            child: const Icon(
              Icons.call,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10).r,
            child: const Icon(
              Icons.video_call,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10).r,
            child: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => const ChatDemo(),
      ),
      bottomSheet: Container(
        height: 60.h,
        decoration: const BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0).r,
              child: const Icon(
                Icons.add,
                color: ColorManager.grey,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0).r,
              child: const Icon(
                Icons.emoji_emotions,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10).r,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.7,
                alignment: Alignment.centerRight,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type Something',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8).r,
              child: const Icon(
                Icons.send,
                color: ColorManager.deepPurple,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
