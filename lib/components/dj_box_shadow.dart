import 'package:flutter/material.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';

class DJBoxShadow {
  DJBoxShadow._();

  static final boxShadow = [
    BoxShadow(
      color: DJColor.h000000.withOpacity(0.25),
      offset: const Offset(0.0, 4.0),
      blurRadius: 6.0,
    ),
  ];
}