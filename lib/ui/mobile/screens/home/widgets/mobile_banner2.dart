import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/assets.dart';

class MobileBanner2 extends StatelessWidget {
  const MobileBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.supplyBanner,
          height: 180.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 25.h,
          left: 23.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "An easy way to send \nrequests to all suppliers",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 18.sp,
                  height: 1.2.h,
                ),
              ),
              18.0.height,
              Container(
                margin: EdgeInsets.only(left: 3.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 7.h,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff127FFF),
                      Color(0xff0067FF),
                    ],
                  ),
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
                  "Send inquiry",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
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
