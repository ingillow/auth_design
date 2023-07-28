import 'package:auth_design/pages/platform_specific_widgets/app_bar/check_platform.dart';
import 'package:auth_design/pages/widgets/app_bar_widget.dart';
import 'package:auth_design/pages/widgets/footer_widget.dart';
import 'package:auth_design/pages/widgets/login_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showFooter = false;
  @override
  Widget build(BuildContext context) {
    double cardWidth;
    double cardHeight;

    if (kIsWeb) {
      cardWidth = 1602;
      cardHeight = 883;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      cardWidth = 1366;
      cardHeight = 720;
    } else {
      cardWidth = 413;
      cardHeight = 852;
    }

    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: kIsWeb ? Size.fromHeight(100) : Size.fromHeight(50) ,
        child: CheckPlatform(),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          // Check if the scroll reaches the bottom of the content
          if (scrollNotification is ScrollUpdateNotification) {
            if (scrollNotification.metrics.pixels <= 0) {
              setState(() {
                _showFooter = false;
              });
            } else if (scrollNotification.metrics.pixels >=
                scrollNotification.metrics.maxScrollExtent) {
              setState(() {
                _showFooter = true;
              });
            }
          }
          return false;
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: cardWidth,
                height: cardHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Center(child: LoginCard()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _showFooter ? buildFooter(context) : null,
    );
  }
}
