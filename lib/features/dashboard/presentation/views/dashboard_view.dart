import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/desktop_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/user_info_list_tile.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobilLayout: (context) => UserInfoListTile(),
        desktopLayout: (context) => DesktopLayout(),
        tabletLayout: (context) => SizedBox(),
      ),
    );
  }
}
