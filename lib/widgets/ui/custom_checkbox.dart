import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Hindari space berlebih
      children: [
        Transform.scale(
          scale: 0.9, // Kurangi ukuran
          child: Checkbox(
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue ?? false);
            },
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        Text(label),
      ],
    );
  }
}
