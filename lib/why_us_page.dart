import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/container_widget.dart';
import 'package:task/custom-painters/oval_chat_box.dart';
import 'package:task/custom-painters/oval_chat_box_2.dart';
import 'package:task/custom-painters/squared_chat_box_1.dart';
import 'package:task/custom-painters/squared_chat_box_2.dart';

class WhyUsPage extends StatefulWidget {
  const WhyUsPage({super.key});

  @override
  State<WhyUsPage> createState() => _WhyUsPageState();
}

class _WhyUsPageState extends State<WhyUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Custom Painters ')),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              ContainerWidget(
                painter: OvalChatBox1(),
                text: '',
              ),
              ContainerWidget(
                painter: OvalChatBox2(),
                text: '',
              ),
              ContainerWidget(
                painter: SquaredChatBox1(),
                text: '',
              ),
              SizedBox(
                height: 3.h,
              ),
              ContainerWidget(
                painter: SquaredChatBox2(),
                text: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
