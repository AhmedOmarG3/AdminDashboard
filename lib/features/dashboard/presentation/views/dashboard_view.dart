import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobilLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopLayout(),
        tabletLayout: (context) => SizedBox(),
      ),
    );
  }
}
