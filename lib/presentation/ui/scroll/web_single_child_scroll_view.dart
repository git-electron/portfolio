import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/di/injector.dart';
import 'package:portfolio/core/domain/models/layout_type.dart';
import 'package:portfolio/core/domain/services/device_info_service.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';
import 'package:portfolio/core/wrappers/web_scroll_wrapper.dart';

class WebSingleChildScrollView extends StatelessWidget {
  const WebSingleChildScrollView({
    required this.controller,
    required this.child,
    this.shouldEnablePadding = false,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.primary,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.keyboardDismissBehavior,
    super.key,
  });

  final Widget child;
  final bool shouldEnablePadding;
  final ScrollController controller;

  final Axis scrollDirection;
  final bool reverse;
  final bool? primary;
  final Clip clipBehavior;
  final String? restorationId;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  @override
  Widget build(BuildContext context) {
    final bool isMobileDevice = $<DeviceInfoService>().isMobileDevice;

    return WebScrollWrapper(
      controller: controller,
      child: SingleChildScrollView(
        reverse: reverse,
        primary: primary,
        controller: controller,
        clipBehavior: clipBehavior,
        restorationId: restorationId,
        scrollDirection: scrollDirection,
        keyboardDismissBehavior: keyboardDismissBehavior,
        physics: isMobileDevice ? null : NeverScrollableScrollPhysics(),
        child: _LayoutTypeWrapper(
          scrollDirection: scrollDirection,
          shouldEnablePadding: shouldEnablePadding,
          child: child,
        ),
      ),
    );
  }
}

class _LayoutTypeWrapper extends StatelessWidget {
  const _LayoutTypeWrapper({
    required this.child,
    required this.scrollDirection,
    required this.shouldEnablePadding,
  });

  final Widget child;
  final Axis scrollDirection;
  final bool shouldEnablePadding;

  @override
  Widget build(BuildContext context) {
    final LayoutType layoutType = context.layoutType;

    return Padding(
      padding: scrollDirection == Axis.vertical && shouldEnablePadding
          ? switch (layoutType) {
              LayoutType.desktop => Pad(horizontal: 200),
              LayoutType.tablet => Pad(horizontal: 100),
              LayoutType.mobile => Pad(horizontal: 20),
            }
          : Pad.zero,
      child: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1600),
          child: child,
        ),
      ),
    );
  }
}
