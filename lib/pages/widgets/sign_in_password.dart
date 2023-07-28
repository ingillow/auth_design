import 'package:auth_design/common/colors_styles.dart';
import 'package:auth_design/common/text_decoration.dart';
import 'package:flutter/material.dart';

class SignInPassword extends StatelessWidget {
  TextEditingController passwordController;
   SignInPassword({Key? key, required this.passwordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 28, right: 28),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          controller: passwordController,
          decoration: InputDecoration(
            hintText: 'Пароль',
            hintStyle: TextsDecorations.hintPasswordTextStyle,
            contentPadding: EdgeInsets.only(left: 20, top: 12),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  width: 2.0,
                  color: ColorsStyles.primaryColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: ColorsStyles.lightViolet, width: 2.0,),
            ),
          ),
        ),
      ),
    );
  }
}
