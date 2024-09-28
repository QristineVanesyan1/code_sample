import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens.dart';

class RouterScreen extends StatefulWidget {
  const RouterScreen({super.key});

  @override
  State<RouterScreen> createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  @override
  Widget build(BuildContext context) {
    return const PreloaderScreen();
  }
}
