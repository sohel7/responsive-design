import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/screens/home_screen.dart';

void main() {
  runApp(const RSApp());
}

class RSApp extends StatelessWidget {
  const RSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home:HomeScreen(),
    );
  }
}

