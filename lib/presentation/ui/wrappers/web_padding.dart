import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/domain/models/layout_type.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';

class WebPaddingWrapper extends StatelessWidget {
  const WebPaddingWrapper({
    required this.child,
    this.isEnabled = true,
    super.key,
  });

  final Widget child;
  final bool isEnabled;

  static double horizontalValue(BuildContext context) => switch (context.layoutType) {
    LayoutType.desktop => 200,
    LayoutType.tablet => 100,
    LayoutType.mobile => 20,
  };

  static double totalHorizontalValue(BuildContext context) => horizontalValue(context) * 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isEnabled ? Pad(horizontal: horizontalValue(context)) : Pad.zero,
      child: child,
    );
  }
}
