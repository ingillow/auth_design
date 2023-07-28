

import 'package:auth_design/common/colors_styles.dart';
import 'package:auth_design/common/text_decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {

  const SubmitButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    double edges;
    double? buttonSizeW;
    double? buttonSizeH;
    if(kIsWeb){
      edges = 30.0;
      buttonSizeW = 412;
      buttonSizeH = 50;
    }else if(defaultTargetPlatform == TargetPlatform.windows){
      edges = 30.0;
      buttonSizeW = 408;
      buttonSizeH = 50;
    }else{
      edges = 28.0;
      buttonSizeW = 324;
      buttonSizeH = 49;
    }
    return    Padding(
      padding:   EdgeInsets.only(left:edges, right: edges),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: ColorsStyles.primaryColor,
          minimumSize:Size(buttonSizeW, buttonSizeH)
        ),
        onPressed: () {
          String email = emailController.text.trim();
          String password = passwordController.text.trim();
          /* AuthService().loginUser(email, password);*/
        },
        child: Text('Войти',
            style: TextsDecorations.loginTextStyle),
      ),
    );
  }
}
