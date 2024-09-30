import 'package:code_sample/configs/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {super.key,
      required this.onChanged,
      required this.title,
      required this.hint});
  final ValueChanged<String> onChanged;
  final String title;
  final String hint;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final TextEditingController controller = TextEditingController();
  late final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 4),
        TextField(
          onTapOutside: (event) =>
              FocusScope.of(context).requestFocus(FocusNode()),
          controller: controller,
          focusNode: focusNode,
          onChanged: (v) => widget.onChanged.call(v.trim()),
          scrollPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 30),
          inputFormatters: [
            LengthLimitingTextInputFormatter(50),
          ],
          style: Theme.of(context).textTheme.titleLarge,
          textInputAction: TextInputAction.search,
          keyboardAppearance: Brightness.light,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
            errorStyle: const TextStyle(
              height: -1,
              fontSize: 0,
            ),
            hintText: widget.hint,
            hintStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.textPrimary),
            filled: true,
            fillColor: AppColors.textPrimary,
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColors.textPrimary)),
            focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColors.textPrimary)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColors.textPrimary)),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColors.textPrimary)),
          ),
        ),
      ],
    );
  }
}
