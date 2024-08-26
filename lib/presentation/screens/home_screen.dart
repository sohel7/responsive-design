import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/widgets/dashboard_card.dart';
import 'package:responsive_design/presentation/widgets/nav_menu.dart';
import 'package:responsive_design/presentation/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout()
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.pink,
      ),
      drawer: const NavMenu(),
      body:  Column(
        children: [
          _getSummarySection(crossAxisCount:1,ratio: 2.4)
        ],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.pink,
      ),
      drawer: const NavMenu(),
      body: Column(
        children: [_getSummarySection(crossAxisCount: 2,ratio: 2)],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return  Scaffold(
        body: Row(
          children: [
            NavMenu(),
            Expanded(
              child: Column(
                children: [
                  _getSummarySection(crossAxisCount:3, ratio: 1.2)
                ],
              ),
            ),
          ],
        )
    );
  }

  Widget _getSummarySection({required int crossAxisCount, required double ratio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
         // childAspectRatio: ratio
        mainAxisExtent: 200
      ),
    children: const [
      DashboardCard(),
      DashboardCard(),
      DashboardCard(),
      DashboardCard(),

    ],
    );
  }

}




