import 'package:auth_design/common/colors_styles.dart';
import 'package:auth_design/common/text_decoration.dart';
import 'package:auth_design/pages/platform_specific_widgets/app_bar/web_app_bar.dart';
import 'package:auth_design/pages/widgets/login_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget buildHeaderLoginCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Вход',
        style: TextsDecorations.loginCardHeaderTextStyle,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text('Введите данные, чтобы войти в личный кабинет.',
            style: TextsDecorations.loginCardSubHeaderTextStyle),
      )
    ],
  );
}

Widget buildDividerLoginCard() {
  return Stack(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 54,
            child: Divider(
              height: 43,
              thickness: 2,
              color: ColorsStyles.infoColors,
            ),
          ),
          Text('Или войдите с помощью:',
              style: TextsDecorations.loginWithTextStyle),
          SizedBox(
            width: 54.spMin,
            child: Divider(
              height: 43.spMin,
              thickness: 2,
              color: ColorsStyles.infoColors,
            ),
          ),
        ],
      ),
    ],
  );
}
