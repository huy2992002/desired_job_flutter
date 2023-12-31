import 'package:flutter/material.dart';
import 'package:desired_job_flutter/resources/dj_style.dart';
import 'package:desired_job_flutter/resources/dj_color.dart';

class DJTitle extends StatelessWidget {
  const DJTitle({
    super.key,
    required this.text,
    this.description,
  });

  final String text;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: DJStyle.h25w600),
        if (description != null) ...[
          const SizedBox(height: 10.0),
          Text(
            description!,
            style: DJStyle.h16w500.copyWith(color: DJColor.h8391A1),
          ),
        ]
      ],
    );
  }
}
