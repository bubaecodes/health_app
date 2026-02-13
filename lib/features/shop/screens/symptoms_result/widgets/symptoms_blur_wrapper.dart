import 'dart:ui';
import 'package:flutter/material.dart';

class SymptomsBlurWrapper extends StatelessWidget {
  final Widget child;
  final bool isActive;

  const SymptomsBlurWrapper({
    super.key,
    required this.child,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    if (isActive) return child;

    return ClipRect(
      child: Stack(
        children: [
          child,
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                color: Colors.black.withOpacity(0.005), // slight dim
              ),
            ),
          ),
        ],
      ),
    );
  }
}
