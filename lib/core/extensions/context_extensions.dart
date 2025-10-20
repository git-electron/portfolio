import 'package:flutter/material.dart';
import 'package:portfolio/core/domain/models/layout_type.dart';

extension BuildContextExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  EdgeInsets get padding => mediaQuery.padding;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  LayoutType get layoutType {
    if (size.width > 1200) return LayoutType.desktop;
    if (size.width > 700) return LayoutType.tablet;
    return LayoutType.mobile;
  }

  bool get isDesktopLayout => layoutType == LayoutType.desktop;
  bool get isTabletLayout => layoutType == LayoutType.tablet;
  bool get isMobileLayout => layoutType == LayoutType.mobile;
}
