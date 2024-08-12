import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constants/assets.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';


class MobileSearch extends StatelessWidget {
  const MobileSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 9.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.gray300, width: 1.r),
        color: AppColors.gray100,
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.search, width: 22.w, height: 22.h),
          6.0.width,
          Text(
            "Search",
            style: TextStyles.labelStyle,
          )
        ],
      ),
    );
  }
}
