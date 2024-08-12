
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/colors.dart';

class CategoriesButtons extends StatelessWidget {
  const CategoriesButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 4.w),
            padding: EdgeInsets.all(9.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: AppColors.gray200,
            ),
            child: Text(
              [
                "All category",
                "Gadgets",
                "Clothes",
                "Accessories",
              ][index],
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
                fontSize: 16.sp,
                height: 1.h,
              ),
            ),
          );
        },
      ),
    );
  }
}
