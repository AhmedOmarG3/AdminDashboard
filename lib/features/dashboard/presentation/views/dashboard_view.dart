import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/adaptive_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/desktop_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/mobile_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return Scaffold(
      key: scaffoldKey,
      drawer: isMobile ? const CustomDrwar() : null,
      appBar: isMobile
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobilLayout: (context) => MobileLayout(),
        desktopLayout: (context) => DesktopLayout(),
        tabletLayout: (context) => TabletLayout(),
      ),
    );
  }
}
