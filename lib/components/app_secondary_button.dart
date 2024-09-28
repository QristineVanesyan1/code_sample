import 'package:code_sample/configs/configs.dart';
import 'package:flutter/material.dart';

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              textStyle:
                  WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                return Theme.of(context).textTheme.headlineSmall;
              }),
              minimumSize: WidgetStateProperty.all<Size>(
                  const Size(double.infinity, 48)),
              side: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return const BorderSide(
                      width: 3, color: AppColors.textPrimary);
                }
                return const BorderSide(width: 3, color: AppColors.textPrimary);
              }),
              foregroundColor:
                  WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return AppColors.textPrimary;
                }
                if (states.contains(WidgetState.disabled)) {
                  return AppColors.textPrimary;
                }
                return AppColors.textPrimary;
              }),
              backgroundColor:
                  WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return AppColors.textPrimary;
                }
                return Colors.transparent;
              })),
          child: Text(title)),
    );
  }
}
