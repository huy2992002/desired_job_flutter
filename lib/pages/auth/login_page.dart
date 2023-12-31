import 'package:flutter/material.dart';
import 'package:desired_job_flutter/components/background/dj_background_auth.dart';
import 'package:desired_job_flutter/components/button/dj_elevated_button.dart';
import 'package:desired_job_flutter/components/button/dj_icon_button.dart';
import 'package:desired_job_flutter/components/button/dj_text_button.dart';
import 'package:desired_job_flutter/components/text/ja_text_divider.dart';
import 'package:desired_job_flutter/components/text/dj_second_text.dart';
import 'package:desired_job_flutter/components/text/ja_title.dart';
import 'package:desired_job_flutter/components/textfield/dj_text_field.dart';
import 'package:desired_job_flutter/components/textfield/dj_text_field_password.dart';
import 'package:desired_job_flutter/constants/string.dart';
import 'package:desired_job_flutter/gen/assets.gen.dart';
import 'package:desired_job_flutter/pages/auth/register_page.dart';
import 'package:desired_job_flutter/pages/auth/widgets/with_social_media.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';
import 'package:desired_job_flutter/resources/dj_style.dart';
import 'package:desired_job_flutter/utils/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: DJBackgroundAuth(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
                top: MediaQuery.of(context).padding.top + 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DJIconButton(
                    onPressed: () => RoutePage.pop(context),
                    icon: Assets.icons.icChevronLeft,
                  ),
                  const SizedBox(height: 44.0),
                  const DJTitle(text: titleLogin),
                  const SizedBox(height: 44.0),
                  DJTextField(hintText: enterEmail),
                  const SizedBox(height: 25.0),
                  DJTextFieldPassword(hintText: enterPassword),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: DJTextButton(
                        text: forgotPassword,
                        textStyle:
                            DJStyle.h14w400.copyWith(color: DJColor.h6B6968),
                      ),
                    ),
                  ),
                  DJElevatedButton(text: login),
                  const DJTextDivider(text: orLoginWith),
                  const WithSociaMedia(),
                  const SizedBox(height: 25.0),
                  Center(
                    child: DJSecondText(
                      firstText: dontHaveAccount,
                      secondText: registerNow,
                      ontap: () {
                        RoutePage.push(context, page: const RegisterPage());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
