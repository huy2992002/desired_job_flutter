import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:desired_job_flutter/components/dj_box_shadow.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';

class DJIconButton extends StatelessWidget {
  const DJIconButton({
    super.key,
    this.onPressed,
    this.width,
    this.padding = const EdgeInsets.all(7.7),
    this.alignment,
    this.color = DJColor.hFFFFFF,
    this.borderColor = DJColor.h6B6968,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    required this.icon,
    this.iconColor,
  });

  const DJIconButton.socialMedia({
    super.key,
    this.onPressed,
    this.width = 105.0,
    this.padding = const EdgeInsets.symmetric(vertical: 15.0),
    this.alignment = Alignment.center,
    this.color = DJColor.hFFFFFF,
    this.borderColor = DJColor.hFFFFFF,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    required this.icon,
    this.iconColor,
  });

  final Function()? onPressed;
  final double? width;
  final EdgeInsetsGeometry padding;
  final Alignment? alignment;
  final Color color;
  final Color borderColor;
  final BorderRadius borderRadius;
  final String icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor),
            borderRadius: borderRadius,
            boxShadow: DJBoxShadow.boxShadow),
        child: SvgPicture.asset(
          icon,
          // ignore: deprecated_member_use
          color: iconColor,
        ),
      ),
    );
  }
}
