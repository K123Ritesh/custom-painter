// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'dart:io';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

class TextExtractionScreen extends StatefulWidget {
  const TextExtractionScreen({super.key});

  @override
  _TextExtractionScreenState createState() => _TextExtractionScreenState();
}

class _TextExtractionScreenState extends State<TextExtractionScreen> {
  String extractedText = '';
  File? pickedImage;

  @override
  void initState() {
    super.initState();
  }

  bool isLoading = true;

  Future<void> extractTextFromImage(ImageSource source) async {
    final XFile? image = await ImagePicker().pickImage(source: source);

    if (image == null) {
      return;
    }

    setState(() {
      isLoading = true;
      pickedImage = File(image.path);
    });

    final InputImage inputImage = InputImage.fromFile(File(image.path));
    final TextRecognizer textDetector =
        TextRecognizer(script: TextRecognitionScript.latin);

    try {
      final RecognizedText recognisedText =
          await textDetector.processImage(inputImage);

      // Extract text

      String text = '';
      for (TextBlock block in recognisedText.blocks) {
        for (TextLine line in block.lines) {
          text += '${line.text}\n';
        }
      }

      setState(() {
        isLoading = false;
        extractedText = text;
      });
    } catch (e) {
      print("Error during text recognition: $e");
    } finally {
      textDetector.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Extraction'),
      ),
      body: FloatingDraggableWidget(
        floatingWidget: InkWell(
          onTap: () {
            extractTextFromImage(ImageSource.camera);
          },
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 37, 255, 230),
                borderRadius: BorderRadius.circular(20.r)),
            child: const Center(
              child: Icon(Icons.camera),
            ),
          ),
        ),
        floatingWidgetHeight: 60.h,
        floatingWidgetWidth: 60.w,
        mainScreenWidget: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (pickedImage != null) ...[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
                  child: Image.file(
                    pickedImage!,
                    height: 350.h,
                    width: double.maxFinite,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: Center(
                    child: isLoading
                        ? Row(
                            children: [
                              Text(
                                'Loading...',
                                style: TextStyle(fontSize: 20.sp),
                              ),
                              const CircularProgressIndicator(),
                            ],
                          )
                        : Text(
                            extractedText,
                            textAlign: TextAlign.center,
                          ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
