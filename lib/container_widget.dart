import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.text, required this.painter});
  final String text;
  final CustomPainter painter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(300.w, 200.h),
            painter: painter,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20.w),
              height: 200.h,
              width: 300.w,
              child: Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
