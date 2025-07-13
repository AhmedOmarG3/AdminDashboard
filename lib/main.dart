import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/views/dashboard_view.dart';

void main() {
  runApp(const AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
      
    );
  }
}


