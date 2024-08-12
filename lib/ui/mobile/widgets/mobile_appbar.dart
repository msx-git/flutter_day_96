import 'package:flutter/material.dart';
import 'package:flutter_day_96/utils/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/assets.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.78.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: SvgPicture.asset(Assets.drawer, height: 24.h, width: 24.w),
          ),
          18.0.width,
          SvgPicture.asset(Assets.appLogo, height: 34.43.h, width: 34.03.w),
          4.81.width,
          SvgPicture.asset(Assets.brand, height: 16.51.h, width: 59.55.w),
          const Spacer(),
          SvgPicture.asset(Assets.shoppingCart, height: 24.h, width: 24.w),
          20.0.width,
          SvgPicture.asset(Assets.person, height: 24.h, width: 24.w),
        ],
      ),
    );
  }
}
