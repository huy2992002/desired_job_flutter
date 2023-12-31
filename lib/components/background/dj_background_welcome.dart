import 'package:flutter/material.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';

class DJBackgroundWelcome extends StatelessWidget {
  const DJBackgroundWelcome({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            DJColor.h46F11B.withOpacity(0.35),
            DJColor.hFFFFFF,
            DJColor.hFFFFFF,
            DJColor.hFFFFFF,
          ],
        ),
      ),
      child: child,
    );
  }
}
