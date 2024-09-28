import 'package:flutter/material.dart';

import '../configs/configs.dart';
import '../screens/screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const RouterScreen(),
    );
  }
}
