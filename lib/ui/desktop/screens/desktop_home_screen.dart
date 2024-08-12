import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DesktopHomeScreen')),
      body: const Center(child: Text('DesktopHomeScreen')),
    );
  }
}
