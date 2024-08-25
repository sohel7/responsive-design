import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    mobile:_buildMobileLayout(),
    tablet:_buildTabletLayout(),
    desktop: _buildDesktopLayout()
);
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.pink,
      ),
      drawer:  const NavMenu(),
      body:  ResponsiveBuilder(
        mobile: const Center(
        child: Text('Hello From Mobile'),
      ),
        tablet: const Center(
          child: Text('Hello From Tablet'),
        ),
        desktop: Container(
          color: Colors.pink,
          child: const Center(
            child: Text('Hello From Fesktop'),
          ),
        ),

      )
  );
  }
  Widget _buildTabletLayout() {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.pink,
        ),
        drawer:  const NavMenu(),
        body:  ResponsiveBuilder( mobile: const Center(
          child: Text('Hello From Mobile'),
        ),
          tablet: const Center(
            child: Text('Hello From Tablet'),
          ),
          desktop: Container(
            color: Colors.pink,
            child: const Center(
              child: Text('Hello From Fesktop'),
            ),
          ),

        )
    );
  }
  Widget _buildDesktopLayout() {
    return const Scaffold(
        body:  Row(
          children: [
            NavMenu(),
            Expanded(child:Center(
                child: Text('From Desktop')
            ),)
          ],
        )
    );
  }

}


