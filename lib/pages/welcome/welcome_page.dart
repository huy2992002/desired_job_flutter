import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:desired_job_flutter/components/background/dj_background_welcome.dart';
import 'package:desired_job_flutter/components/button/dj_elevated_button.dart';
import 'package:desired_job_flutter/components/button/dj_text_button.dart';
import 'package:desired_job_flutter/components/text/dj_second_text.dart';
import 'package:desired_job_flutter/constants/string.dart';
import 'package:desired_job_flutter/gen/assets.gen.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';
import 'package:desired_job_flutter/resources/dj_style.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DJBackgroundWelcome(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.12),
              Image.asset(Assets.images.imgWelcome.path),
              const SizedBox(height: 14.0),
              SvgPicture.asset(Assets.icons.icLogoApp),
              DJSecondText(
                firstText: desired,
                secondText: job,
                firstTextStyle: DJStyle.h25w600,
                secondTextStyle: DJStyle.h18w400,
              ),
              const SizedBox(height: 32.0),
              DJElevatedButton(
                // onPressed: () {
                //   RoutePage.push(context, page: const LoginPage());
                // },
                text: login,
              ),
              const SizedBox(height: 22.0),
              DJElevatedButton.outline(
                // onPressed: () {
                //   RoutePage.push(context, page: const RegisterPage());
                // },
                text: register,
              ),
              const Spacer(),
              DJTextButton(
                text: continueAsAGuest,
                textStyle: DJStyle.h14w400.copyWith(color: DJColor.h40573A),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
