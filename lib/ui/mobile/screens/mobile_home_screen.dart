import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/assets.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_day_96/utils/constants/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import 'home/widgets/mobile_consumer_electronics.dart';
import 'home/widgets/mobile_home_outdoors.dart';
import 'home/widgets/mobile_widgets.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray100,
      drawer: const Drawer(),
      body: SafeArea(
        child: ListView(
          children: [
            /// APPBAR
            const MobileAppbar(),

            /// SEARCH
            const MobileSearch(),
            16.0.height,

            /// CATEGORIES
            const CategoriesButtons(),
            17.0.height,

            /// BANNER
            const MobileBanner(),
            10.0.height,

            /// OFFERS AND DEALS
            const MobileDealOffers(),
            10.0.height,

            /// OUTDOOR PRODUCTS
            const MobileHomeOutdoors(),
            10.0.height,

            /// ELECTRONICS
            const MobileConsumerElectronics(),
            10.0.height,

            /// BANNER
            const MobileBanner2(),
            20.0.height,

            Padding(
              padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
              child: Text(
                "Recommended items",
                style: TextStyles.bannerLabel
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),

            GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 165.w / 245.h,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.w,
              ),
              itemBuilder: (context, index) {
                final descriptions = [
                  "Blue polo, comfy",
                  " Faux fur collar",
                  "Blue leather, compact",
                  " Brown clay, lidded",
                ];
                final images = [
                  Assets.tShirt,
                  Assets.jacket,
                  Assets.wallet,
                  Assets.pot,
                ];
                return ProductCard(
                  imageUrl: images[index],
                  price: Random().nextInt(50).toDouble(),
                  description: descriptions[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final double price;
  final String description;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 143.23.w,
            height: 143.23.h,
            child: Image.asset(imageUrl),
          ),
          const SizedBox(height: 16),
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }
}
