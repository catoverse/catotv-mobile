import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final String? error;
  final String hintText;
  final TextInputType keyboardType;
  final bool? isSecure;
  final int? maxLines;
  final TextEditingController controller;

  const InputField({
    Key? key,
    required this.title,
    required this.keyboardType,
    required this.controller,
    this.error = '',
    this.maxLines = 1,
    this.hintText = "",
    this.isSecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: textFieldStyle,
          child: TextField(
            decoration:
                InputDecoration(labelText: title, border: InputBorder.none),
            maxLines: maxLines,
            obscureText: isSecure!,
            keyboardType: keyboardType,
            controller: controller,
          ),
        ),
        if (hintText.isNotEmpty)
          Text(
            hintText,
            style: const TextStyle(color: AppColors.textSecondary),
          )
      ],
    );
  }
}
