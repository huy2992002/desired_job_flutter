import 'package:flutter/material.dart';
import 'package:desired_job_flutter/components/background/dj_background_auth.dart';
import 'package:desired_job_flutter/components/button/dj_elevated_button.dart';
import 'package:desired_job_flutter/components/button/dj_icon_button.dart';
import 'package:desired_job_flutter/components/text/dj_second_text.dart';
import 'package:desired_job_flutter/components/text/dj_text_divider.dart';
import 'package:desired_job_flutter/components/text/dj_title.dart';
import 'package:desired_job_flutter/components/textfield/dj_text_field.dart';
import 'package:desired_job_flutter/components/textfield/dj_text_field_password.dart';
import 'package:desired_job_flutter/constants/string.dart';
import 'package:desired_job_flutter/gen/assets.gen.dart';
import 'package:desired_job_flutter/pages/auth/widgets/with_social_media.dart';
import 'package:desired_job_flutter/utils/route.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  const SizedBox(height: 20.0),
                  const DJTitle(text: titleRegister),
                  const SizedBox(height: 20.0),
                  DJTextField(hintText: enterName),
                  const SizedBox(height: 14.0),
                  DJTextField(hintText: phoneNumber),
                  const SizedBox(height: 14.0),
                  DJTextField(hintText: enterEmail),
                  const SizedBox(height: 14.0),
                  DJTextFieldPassword(hintText: enterPassword),
                  const SizedBox(height: 14.0),
                  DJTextField(hintText: confirmPassword),
                  const SizedBox(height: 20.0),
                  DJElevatedButton(text: register),
                  const DJTextDivider(
                    text: orRegisterWith,
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  const WithSociaMedia(),
                  const SizedBox(height: 15.0),
                  Center(
                    child: DJSecondText(
                      firstText: alreadyHaveAccount,
                      secondText: loginNow,
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
