// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ColorsTailorMixin on ThemeExtension<Colors> {
  Color get transparent;
  Color get white;
  Color get black;
  Color get background;
  Color get onBackground;
  Color get text;
  Color get warning;
  Color get error;
  Color get primary;
  Color get primaryGradientStart;
  Color get primaryGradientEnd;
  LinearGradient get primaryGradient;
  Color get secondary;
  Color get secondaryGradientStart;
  Color get secondaryGradientEnd;
  LinearGradient get secondaryGradient;
  Color get accent;
  Color get accentGradientStart;
  Color get accentGradientEnd;
  LinearGradient get accentGradient;

  @override
  Colors copyWith({
    Color? transparent,
    Color? white,
    Color? black,
    Color? background,
    Color? onBackground,
    Color? text,
    Color? warning,
    Color? error,
    Color? primary,
    Color? primaryGradientStart,
    Color? primaryGradientEnd,
    LinearGradient? primaryGradient,
    Color? secondary,
    Color? secondaryGradientStart,
    Color? secondaryGradientEnd,
    LinearGradient? secondaryGradient,
    Color? accent,
    Color? accentGradientStart,
    Color? accentGradientEnd,
    LinearGradient? accentGradient,
  }) {
    return Colors(
      transparent: transparent ?? this.transparent,
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      text: text ?? this.text,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      primary: primary ?? this.primary,
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      secondary: secondary ?? this.secondary,
      secondaryGradientStart:
          secondaryGradientStart ?? this.secondaryGradientStart,
      secondaryGradientEnd: secondaryGradientEnd ?? this.secondaryGradientEnd,
      secondaryGradient: secondaryGradient ?? this.secondaryGradient,
      accent: accent ?? this.accent,
      accentGradientStart: accentGradientStart ?? this.accentGradientStart,
      accentGradientEnd: accentGradientEnd ?? this.accentGradientEnd,
      accentGradient: accentGradient ?? this.accentGradient,
    );
  }

  @override
  Colors lerp(covariant ThemeExtension<Colors>? other, double t) {
    if (other is! Colors) return this as Colors;
    return Colors(
      transparent: Color.lerp(transparent, other.transparent, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      text: Color.lerp(text, other.text, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryGradientStart: Color.lerp(
        primaryGradientStart,
        other.primaryGradientStart,
        t,
      )!,
      primaryGradientEnd: Color.lerp(
        primaryGradientEnd,
        other.primaryGradientEnd,
        t,
      )!,
      primaryGradient: t < 0.5 ? primaryGradient : other.primaryGradient,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryGradientStart: Color.lerp(
        secondaryGradientStart,
        other.secondaryGradientStart,
        t,
      )!,
      secondaryGradientEnd: Color.lerp(
        secondaryGradientEnd,
        other.secondaryGradientEnd,
        t,
      )!,
      secondaryGradient: t < 0.5 ? secondaryGradient : other.secondaryGradient,
      accent: Color.lerp(accent, other.accent, t)!,
      accentGradientStart: Color.lerp(
        accentGradientStart,
        other.accentGradientStart,
        t,
      )!,
      accentGradientEnd: Color.lerp(
        accentGradientEnd,
        other.accentGradientEnd,
        t,
      )!,
      accentGradient: t < 0.5 ? accentGradient : other.accentGradient,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Colors &&
            const DeepCollectionEquality().equals(
              transparent,
              other.transparent,
            ) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(
              background,
              other.background,
            ) &&
            const DeepCollectionEquality().equals(
              onBackground,
              other.onBackground,
            ) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(warning, other.warning) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(
              primaryGradientStart,
              other.primaryGradientStart,
            ) &&
            const DeepCollectionEquality().equals(
              primaryGradientEnd,
              other.primaryGradientEnd,
            ) &&
            const DeepCollectionEquality().equals(
              primaryGradient,
              other.primaryGradient,
            ) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(
              secondaryGradientStart,
              other.secondaryGradientStart,
            ) &&
            const DeepCollectionEquality().equals(
              secondaryGradientEnd,
              other.secondaryGradientEnd,
            ) &&
            const DeepCollectionEquality().equals(
              secondaryGradient,
              other.secondaryGradient,
            ) &&
            const DeepCollectionEquality().equals(accent, other.accent) &&
            const DeepCollectionEquality().equals(
              accentGradientStart,
              other.accentGradientStart,
            ) &&
            const DeepCollectionEquality().equals(
              accentGradientEnd,
              other.accentGradientEnd,
            ) &&
            const DeepCollectionEquality().equals(
              accentGradient,
              other.accentGradient,
            ));
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(transparent),
      const DeepCollectionEquality().hash(white),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(warning),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryGradientStart),
      const DeepCollectionEquality().hash(primaryGradientEnd),
      const DeepCollectionEquality().hash(primaryGradient),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(secondaryGradientStart),
      const DeepCollectionEquality().hash(secondaryGradientEnd),
      const DeepCollectionEquality().hash(secondaryGradient),
      const DeepCollectionEquality().hash(accent),
      const DeepCollectionEquality().hash(accentGradientStart),
      const DeepCollectionEquality().hash(accentGradientEnd),
      const DeepCollectionEquality().hash(accentGradient),
    ]);
  }
}

extension ColorsBuildContext on BuildContext {
  Colors get colors => Theme.of(this).extension<Colors>()!;
}

mixin _$StylesTailorMixin on ThemeExtension<Styles> {
  TextStyle get header;
  TextStyle get title;
  TextStyle get body;
  TextStyle get accent;

  @override
  Styles copyWith({
    TextStyle? header,
    TextStyle? title,
    TextStyle? body,
    TextStyle? accent,
  }) {
    return Styles(
      header: header ?? this.header,
      title: title ?? this.title,
      body: body ?? this.body,
      accent: accent ?? this.accent,
    );
  }

  @override
  Styles lerp(covariant ThemeExtension<Styles>? other, double t) {
    if (other is! Styles) return this as Styles;
    return Styles(
      header: TextStyle.lerp(header, other.header, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      accent: TextStyle.lerp(accent, other.accent, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Styles &&
            const DeepCollectionEquality().equals(header, other.header) &&
            const DeepCollectionEquality().equals(title, other.title) &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality().equals(accent, other.accent));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(accent),
    );
  }
}

extension StylesBuildContext on BuildContext {
  Styles get styles => Theme.of(this).extension<Styles>()!;
}
