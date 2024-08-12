import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on double {
  SizedBox get height => SizedBox(height: h.toDouble());

  SizedBox get width => SizedBox(width: h.toDouble());
}
