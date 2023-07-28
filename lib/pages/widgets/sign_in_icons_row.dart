

import 'package:auth_design/common/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInIconsRow extends StatelessWidget {
  const SignInIconsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 106,
          height: 60,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorsStyles.cardIconColors,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ImageIcon(
            AssetImage("assets/icons/yandex.png"),
            size: 24,
          ),
        ),
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorsStyles.cardIconColors,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const ImageIcon(
            AssetImage("assets/icons/google.png"),
            size: 24,
          ),
        ),
        Container(
          width: 68,
          height: 60,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorsStyles.cardIconColors,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const ImageIcon(
            AssetImage("assets/icons/vk.png"),
            size: 24,
          ),
        ),
      ],
    );
  }
}
