import 'package:flutter/material.dart';
import 'package:desired_job_flutter/gen/assets.gen.dart';
import 'package:desired_job_flutter/components/button/dj_icon_button.dart';

class WithSociaMedia extends StatelessWidget {
  const WithSociaMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DJIconButton.socialMedia(
          width: size.width / 3.0 - 28.0,
          icon: Assets.icons.icFacebook,
        ),
        DJIconButton.socialMedia(
          width: size.width / 3.0 - 28.0,
          icon: Assets.icons.icGoogle,
        ),
        DJIconButton.socialMedia(
          width: size.width / 3.0 - 28.0,
          icon: Assets.icons.icApple,
        ),
      ],
    );
  }
}
