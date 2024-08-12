import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/colors.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_day_96/utils/constants/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/assets.dart';

class MobileBanner extends StatelessWidget {
  const MobileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.banner,
          height: 180.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 24.h,
          left: 22.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Latest trending",
                style: TextStyles.bannerLabel,
              ),
              Text(
                "Electronic items",
                style: TextStyles.bannerLabel
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              18.0.height,
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 7.h,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff383838).withOpacity(0.25),
                      blurRadius: 2.r,
                      offset: Offset(0, 1.h),
                    )
                  ],
                ),
                child: Text(
                  "Learn more",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
