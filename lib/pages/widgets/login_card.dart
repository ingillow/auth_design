import 'package:auth_design/common/colors_styles.dart';
import 'package:auth_design/common/text_decoration.dart';
import 'package:auth_design/pages/widgets/app_bar_widget.dart';
import 'package:auth_design/pages/widgets/sign_in_email.dart';
import 'package:auth_design/pages/widgets/sign_in_icons_row.dart';
import 'package:auth_design/pages/widgets/sign_in_password.dart';
import 'package:auth_design/pages/widgets/submit_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    double cardWidth;
    double cardHeight;

    if (kIsWeb) {
      cardWidth = 472;
      cardHeight = 592;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      cardWidth = 468;
      cardHeight = 592;
    } else {
      cardWidth = 380;
      cardHeight = 586;
    }

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Align(
              alignment: kIsWeb ? Alignment.centerLeft : Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: ColorsStyles.cardBackgroundLoginColors,
                child: Column(
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 28.0, right: 28, top: 28),
                        child: buildHeaderLoginCard()),
                    const SizedBox(
                      height: 20,
                    ),
                    SignInEmail(emailController: emailController),
                    SignInPassword(passwordController: passwordController),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 30),
                      child: Align(
                        alignment:  Alignment.topRight,
                        child: RichText(
                          text: TextSpan(
                            text: 'Забыли пароль?',
                            recognizer: TapGestureRecognizer()..onTap,
                            style: TextsDecorations.forgotPasswordTextStyle,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SubmitButton(),
                    const SizedBox(
                      height: 28,
                    ),
                    buildDividerLoginCard(),
                    const SizedBox(
                      height: 20,
                    ),
                    const SignInIconsRow(),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ещё нет акаунта?',
                            style: TextsDecorations.noAccountTextStyle),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Зарегистрируйтесь',
                            style: TextsDecorations.signUpTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
