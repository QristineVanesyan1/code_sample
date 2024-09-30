import 'package:code_sample/configs/configs.dart';
import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            textStyle:
                WidgetStateProperty.resolveWith((Set<WidgetState> states) {
              return Theme.of(context).textTheme.headlineSmall;
            }),
            side: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return const BorderSide(width: 3, color: AppColors.textPrimary);
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
              if (states.contains(WidgetState.disabled)) {
                return AppColors.textPrimary;
              }
              if (states.contains(WidgetState.pressed)) {
                return AppColors.textPrimary;
              }
              return AppColors.textPrimary;
            }),
            minimumSize:
                WidgetStateProperty.all<Size>(const Size(double.infinity, 48))),
        child: Text(title));
  }
}
