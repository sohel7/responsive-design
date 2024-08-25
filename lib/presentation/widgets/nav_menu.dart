import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text('Home'),
              tileColor: Colors.grey.shade300,
            ),
            const ListTile(
              title: Text('Settings'),
              tileColor: Colors.pink,
            ),
            const ListTile(
              title: Text('Products'),
            ),
            const ListTile(
              title: Text('Stocks'),
            ),
          ],
        ),
      ),
    );
  }
}