import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ui/desktop/screens/desktop_home_screen.dart';
import 'ui/mobile/screens/mobile_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: width > 768 ? const Size(1440, 900) : const Size(360, 800),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: width > 768
              ? const DesktopHomeScreen()
              : const MobileHomeScreen(),
        );
      },
    );
  }
}
