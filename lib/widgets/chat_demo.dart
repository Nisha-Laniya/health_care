import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/resources.dart';

class ChatDemo extends StatelessWidget {
  const ChatDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80).r,
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20).w,
              color: ColorManager.grey.withOpacity(0.3),
              child: const Text(
                'Hello, what can i do for you? you can book appointment directly',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10).r,
          child: Container(
            alignment: Alignment.centerRight,
            child: ClipPath(
              clipper: LowerNipMessageClipper(
                MessageType.send,
              ),
              child: Container(
                padding: const EdgeInsets.all(20).w,
                color: ColorManager.deepPurple,
                child: const Text(
                  'Hello Doctor, Are You There?',
                  style: TextStyle(
                    color: ColorManager.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
