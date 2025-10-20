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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isEnabled
          ? switch (context.layoutType) {
              LayoutType.desktop => Pad(horizontal: 200),
              LayoutType.tablet => Pad(horizontal: 100),
              LayoutType.mobile => Pad(horizontal: 20),
            }
          : Pad.zero,
      child: child,
    );
  }
}
