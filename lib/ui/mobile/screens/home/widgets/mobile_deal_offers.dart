import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/assets.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';

class MobileDealOffers extends StatelessWidget {
  const MobileDealOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 10.w, top: 10.h),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deals and offers",
                      style: TextStyles.bannerLabel
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Electronic equipments",
                      style: TextStyles.labelDim,
                    ),
                  ],
                ),
                const Spacer(),
                const TimeBlock(value: '13', label: 'Hour'),
                4.0.width,
                const TimeBlock(value: '34', label: 'Min'),
                4.0.width,
                const TimeBlock(value: '56', label: 'Sec'),
              ],
            ),
          ),
          13.0.height,
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCard(
                  title: "Suits",
                  imageUrl: Assets.suits,
                  discountPercentage: 25,
                ),
                ProductCard(
                  title: "Headphone",
                  imageUrl: Assets.headphone,
                  discountPercentage: 25,
                ),
                ProductCard(
                  title: "Laptop",
                  imageUrl: Assets.laptop,
                  discountPercentage: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TimeBlock extends StatelessWidget {
  const TimeBlock({super.key, required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      padding: EdgeInsets.symmetric(vertical: 6.h),
      color: AppColors.gray200,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "$value\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            fontFamily: 'Inter',
            color: AppColors.gray500,
          ),
          children: [
            TextSpan(
              text: label,
              style: TextStyle(
                fontSize: 11.sp,
                fontFamily: 'Inter',
                color: AppColors.gray500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int discountPercentage;
  final VoidCallback? onTap; // Optional callback for tap events

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.discountPercentage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 21.w),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.gray300),
            right: BorderSide(color: AppColors.gray300),
            bottom: BorderSide(color: AppColors.gray300),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 98.w,
              height: 98.h,
              child: Image.asset(imageUrl),
            ),
            4.0.height,
            Text(
              title,
              style: TextStyles.bannerLabel.copyWith(fontSize: 13.sp),
            ),
            13.0.height,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: const Color(0xffFFE3E3),
                borderRadius: BorderRadius.circular(29.r),
              ),
              child: Text(
                '-$discountPercentage%',
                style: TextStyle(
                  color: const Color(0xffEB001B),
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            10.0.height,
          ],
        ),
      ),
    );
  }
}
