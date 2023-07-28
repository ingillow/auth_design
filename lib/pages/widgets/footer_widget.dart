import 'package:auth_design/common/colors_styles.dart';
import 'package:auth_design/common/text_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Widget? buildFooter(BuildContext context) {
  if (kIsWeb) {
    return SingleChildScrollView(
      child: Container(
        color: ColorsStyles.footerColor,
        child: Row(
          children: [
            SizedBox(
              width: 140,
            ),
            buildFirstColumn(),
            SizedBox(
              width: 70,
            ),
            buildSecondColumn(),
            SizedBox(
              width: 70,
            ),
            buildThirdInfoColumn(),
            SizedBox(width: 100,),
            buildAnotherColumn()
          ],
        ),
      ),
    );
  }
  return null;
}

Widget buildFirstColumn() {
  return Padding(
    padding: const EdgeInsets.only(left: 140.0, top: 80, bottom: 80),
    child: Container(
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: "Компания\n",
              style: TextsDecorations.footerHeaderTextStyle,
              children: [
                TextSpan(
                  text: 'Omega Studio\n',
                  style: TextsDecorations.footerTextStyle,
                ),
                TextSpan(
                  text: 'Работа в Omega Studio\n',
                  style: TextsDecorations.footerTextStyle,
                ),
                TextSpan(
                  text: 'Разработчикам\n',
                  style: TextsDecorations.footerHeaderTextStyle,
                ),
                TextSpan(
                  text: 'Справка\n',
                  style: TextsDecorations.footerTextStyle,
                ),

              ],
            ),
          ),
        ],
      ),
    ),
  );
}


Widget buildSecondColumn() {
  return Container(
    child: Column(
      children: [
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: 'Пользователям\n',
            style: TextsDecorations.footerHeaderTextStyle,
            children: [
              TextSpan(
                text: 'Пользовательское\nсоглашение\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Политика\nконфиденциальности\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Политика использования\nфайлов cookie\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Справка',
                style: TextsDecorations.footerTextStyle,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildThirdInfoColumn() {
  return Container(
    child: Column(
      children: [
        RichText(
          text: TextSpan(
            text: "Бизнесу\n",
            style: TextsDecorations.footerHeaderTextStyle,
            children: [
              TextSpan(
                text: 'Контакты\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Новости\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Политика использования\nфайлов cookie\n',
                style: TextsDecorations.footerTextStyle,
              ),
              TextSpan(
                text: 'Справка\n',
                style: TextsDecorations.footerTextStyle,
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildAnotherColumn(){
  return Expanded(
    child: Column(
      children: [
      SizedBox(
      width: 276,
      height: 50,
      child: ElevatedButton.icon(
        icon:  Icon(Icons.download_sharp),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0), // Half of the height to make it fully rounded
          ),
        ),
        label: Text('Download app'),
      ),),
        SizedBox(height: 30,),
        Row(
          children: [
            Text('Social medias',style: TextsDecorations.footerTextStyle,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                width: 42,
                height: 42,
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                width: 42,
                height: 42,
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                width: 42,
                height: 42,
                child: Icon(Icons.add),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
