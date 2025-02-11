import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final Widget prefixIcon;
  final bool isPassword;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final void Function()? onPressed;
  final bool isNumeric;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.validator,
    this.obscureText = true,
    this.onPressed,
    this.isNumeric = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      (obscureText ?? false)
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: onPressed,
                  )
                : null,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            hintText: hintText,
          ),
          obscureText: isPassword && (obscureText ?? false),
          validator: validator,
        ),
      ],
    );
  }
}
