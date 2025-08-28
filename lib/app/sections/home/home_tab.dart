import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart'; // For accessing local paths
import 'dart:io'; // For file operations
import 'package:universal_html/html.dart' as html;
import 'package:mysite/changes/links.dart';
import '../../widgets/color_chage_btn.dart'; // For requesting permissions

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen height and width using MediaQuery
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight * 0.60, // 60% of screen height
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.10, top: screenHeight * 0.10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // children: [
              //   // Your other widgets...
              //
              //   // ColorChageButton(
              //   //   text: 'download cv',
              //   //   onTap: () {
              //   //     html.window.open(resume, "pdf");
              //   //   },
              //   // ),
              //
              //   // More of your other widgets...
              // ],
            ),
          ),
        ],
      ),
    );
  }

  // Get the Downloads directory for Android/iOS
  Future<Directory?> getDownloadsDirectory() async {
    if (Platform.isAndroid) {
      return Directory('/storage/emulated/0/Download');
    } else if (Platform.isIOS) {
      return await getApplicationDocumentsDirectory();
    }
    return null;
  }
}
