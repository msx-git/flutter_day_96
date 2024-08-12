import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/assets.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_styles.dart';

class MobileHomeOutdoors extends StatelessWidget {
  const MobileHomeOutdoors({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 14.h, 10.w, 15.h),
            child: Text(
              "Home and outdoor",
              style:
                  TextStyles.bannerLabel.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCard(
                  title: "Magazine Shelf",
                  imageUrl: Assets.magazineShelf,
                  price: 25,
                ),
                ProductCard(
                  title: "Cozy Chair",
                  imageUrl: Assets.armChair2,
                  price: 25,
                ),
                ProductCard(
                  title: "Armchair",
                  imageUrl: Assets.armChair,
                  price: 25,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Source now",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    fontSize: 16.sp,
                  ),
                ),
                6.0.width,
                SvgPicture.asset(Assets.arrowRight, height: 22.h)
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
  final int price;
  final VoidCallback? onTap; // Optional callback for tap events

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
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
            5.0.height,
            Text("From USD $price", style: TextStyles.labelDim),
            14.0.height,
          ],
        ),
      ),
    );
  }
}
