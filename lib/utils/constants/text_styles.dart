import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle labelStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: AppColors.gray500,
  );

  static final TextStyle bannerLabel = TextStyle(
    color: AppColors.c1,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
  );

  static final TextStyle labelDim = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    fontFamily: 'Inter',
    color: AppColors.gray600,
  );
}
