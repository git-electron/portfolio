import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../gen/colors.gen.dart';
import '../gen/fonts.gen.dart';

part 'theme_colors.dart';
part 'theme_extensions.tailor.dart';
part 'theme_styles.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Colors extends ThemeExtension<Colors> with _$ColorsTailorMixin {
  const Colors({
    required this.transparent,
    required this.white,
    required this.black,
    required this.background,
    required this.onBackground,
    required this.text,
    required this.warning,
    required this.error,
    required this.primary,
    required this.primaryGradientEnd,
    required this.primaryGradientStart,
    required this.primaryGradient,
    required this.secondary,
    required this.secondaryGradientEnd,
    required this.secondaryGradientStart,
    required this.secondaryGradient,
    required this.accent,
    required this.accentGradientEnd,
    required this.accentGradientStart,
    required this.accentGradient,
  });

  @override
  final Color transparent;

  @override
  final Color white;

  @override
  final Color black;

  @override
  final Color background;

  @override
  final Color onBackground;

  @override
  final Color text;

  @override
  final Color warning;

  @override
  final Color error;

  @override
  final Color primary;

  @override
  final Color primaryGradientStart;

  @override
  final Color primaryGradientEnd;

  @override
  final LinearGradient primaryGradient;

  @override
  final Color secondary;

  @override
  final Color secondaryGradientStart;

  @override
  final Color secondaryGradientEnd;

  @override
  final LinearGradient secondaryGradient;

  @override
  final Color accent;

  @override
  final Color accentGradientStart;

  @override
  final Color accentGradientEnd;

  @override
  final LinearGradient accentGradient;
}

const Colors colors = Colors(
  transparent: _Colors.transparent,
  white: _Colors.white,
  black: _Colors.black,
  background: _Colors.background,
  onBackground: _Colors.onBackground,
  text: _Colors.text,
  warning: _Colors.warning,
  error: _Colors.error,
  primary: _Colors.primary,
  primaryGradientEnd: _Colors.primaryGradientEnd,
  primaryGradientStart: _Colors.primaryGradientStart,
  primaryGradient: _Colors.primaryGradient,
  secondary: _Colors.secondary,
  secondaryGradientEnd: _Colors.secondaryGradientEnd,
  secondaryGradientStart: _Colors.secondaryGradientStart,
  secondaryGradient: _Colors.secondaryGradient,
  accent: _Colors.accent,
  accentGradientEnd: _Colors.accentGradientEnd,
  accentGradientStart: _Colors.accentGradientStart,
  accentGradient: _Colors.accentGradient,
);

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Styles extends ThemeExtension<Styles> with _$StylesTailorMixin {
  Styles({
    required this.header,
    required this.title,
    required this.body,
    required this.accent,
  });

  @override
  final TextStyle header;

  @override
  final TextStyle title;

  @override
  final TextStyle body;

  @override
  final TextStyle accent;
}

final Styles styles = Styles(
  header: _Styles.header,
  title: _Styles.title,
  body: _Styles.body,
  accent: _Styles.accent,
);
