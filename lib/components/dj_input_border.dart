import 'package:flutter/material.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';

class DJInputBorder {
  DJInputBorder._();

  static OutlineInputBorder outlineInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? DJColor.hE7E3E3),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
