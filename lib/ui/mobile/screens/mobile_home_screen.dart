import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../widgets/mobile_appbar.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            /// APPBAR
            MobileAppbar(),
          ],
        ),
      ),
    );
  }
}
