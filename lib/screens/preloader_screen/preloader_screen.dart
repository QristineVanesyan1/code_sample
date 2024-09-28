import 'package:flutter/material.dart';

class PreloaderScreen extends StatelessWidget {
  const PreloaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
