import 'package:flutter/material.dart';

abstract class AppPalette {
  static const crimsonRed = Color(0xFFDB3022);
  static const brightRed = Color(0xFFF01F0E);

  static const charcoal = Color(0xFF222222);
  static const silverGray = Color(0xFF9B9B9B);

  // Grey
  static const grey = _GreyColors();
}

/// Alternative way to group colors in the palette.
///
/// The downside is that you won't be able
/// to use them as constructor default values,
/// because they are not constants.
///
/// Usage example: `AppPalette.grey.grey50`.
class _GreyColors {
  const _GreyColors();

  final grey50 = const Color(0xFFFAFAFA);
  final grey100 = const Color(0xFFF5F5F5);
}
