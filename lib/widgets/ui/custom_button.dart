import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Color borderColor;
  final double? width;
  final bool disableClickEffect;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.borderRadius = 30.0,
    this.borderColor = Colors.white,
    this.width,
    this.disableClickEffect = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0, // Hilangkan shadow default
          shadowColor: Colors.transparent, // Hilangkan shadow saat ditekan
        ).copyWith(
          overlayColor: disableClickEffect
              ? WidgetStateProperty.all(Colors.transparent)
              : null, // Hilangkan efek klik
          splashFactory: disableClickEffect
              ? NoSplash.splashFactory
              : null, // Hilangkan splash
          elevation:
              WidgetStateProperty.all(0), // Hilangkan shadow di semua state
        ),
        child: child,
      ),
    );
  }
}
