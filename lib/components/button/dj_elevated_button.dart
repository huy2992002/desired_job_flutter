import 'package:flutter/material.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';
import 'package:desired_job_flutter/resources/dj_style.dart';

class DJElevatedButton extends StatelessWidget {
  DJElevatedButton({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
    this.alignment = Alignment.center,
    this.color = DJColor.h436B49,
    this.borderColor = DJColor.h436B49,
    BorderRadius? borderRadius,
    required this.text,
    this.textStyle = DJStyle.h16w600,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(10.0);

  DJElevatedButton.outline({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
    this.alignment = Alignment.center,
    this.color = DJColor.hFFFFFF,
    this.borderColor = DJColor.h436B49,
    BorderRadius? borderRadius,
    required this.text,
    TextStyle? textStyle,
  })  : borderRadius = borderRadius ?? BorderRadius.circular(10.0),
        textStyle =
            textStyle ?? DJStyle.h16w600.copyWith(color: DJColor.h436B49);

  DJElevatedButton.press({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
    this.alignment = Alignment.center,
    this.color = DJColor.h83C189,
    this.borderColor = DJColor.h83C189,
    BorderRadius? borderRadius,
    required this.text,
    this.textStyle = DJStyle.h16w600,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(10.0);

  DJElevatedButton.small({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.alignment,
    this.color = DJColor.h436B49,
    this.borderColor = DJColor.h436B49,
    BorderRadius? borderRadius,
    required this.text,
    this.textStyle = DJStyle.h16w600,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(10.0);

  DJElevatedButton.outlineSmall({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.alignment,
    this.color = DJColor.hFFFFFF,
    this.borderColor = DJColor.h436B49,
    BorderRadius? borderRadius,
    required this.text,
    TextStyle? textStyle,
  })  : borderRadius = borderRadius ?? BorderRadius.circular(10.0),
        textStyle =
            textStyle ?? DJStyle.h16w600.copyWith(color: DJColor.h436B49);

  DJElevatedButton.pressSmall({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.alignment,
    this.color = DJColor.h83C189,
    this.borderColor = DJColor.h83C189,
    BorderRadius? borderRadius,
    required this.text,
    this.textStyle = DJStyle.h16w600,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(10.0);



  final Function()? onPressed;
  final EdgeInsetsGeometry padding;
  final Alignment? alignment;
  final Color color;
  final Color borderColor;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: borderRadius,
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
