import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double padding;

  const CircularButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.radius = 50, // Default circle button
    this.backgroundColor = Colors.black,
    this.borderColor = Colors.white,
    this.borderWidth = 2,
    this.padding = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(), // Membuat tombol berbentuk lingkaran
        padding: EdgeInsets.all(padding), // Mengatur padding
        backgroundColor: backgroundColor, // Latar belakang dengan opacity
        foregroundColor: Colors.white, // Warna ikon saat ditekan
        side: BorderSide(
          color: borderColor, // Warna border
          width: borderWidth, // Ketebalan border
        ),
      ),
      child: child, // Custom child
    );
  }
}
