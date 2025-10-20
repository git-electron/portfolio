import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';

import '../../../core/extensions/color_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../../../core/gen/colors.gen.dart';
import '../../../core/theme/theme_extensions.dart';
import '../wrappers/tappable.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onTap,
    required this.contentColor,
    required this.backgroundColor,
    this.text,
    this.icon,
    this.width,
    this.borderColor,
    this.height = 50,
    this.isEnabled = true,
    this.isLoading = false,
    this.isExpanded = false,
    super.key,
  });

  factory AppButton.primary({
    required VoidCallback onTap,
    String? text,
    SvgGenImage? icon,
    double? width,
    double height = 50,
    bool isEnabled = true,
    bool isLoading = false,
    bool isExpanded = false,
  }) {
    return AppButton(
      onTap: onTap,
      text: text,
      icon: icon,
      width: width,
      height: height,
      isEnabled: isEnabled,
      isLoading: isLoading,
      isExpanded: isExpanded,
      borderColor: AppColors.primary,
      contentColor: AppColors.primary,
      backgroundColor: AppColors.background.copyWithOpacity(0),
    );
  }

  factory AppButton.secondary({
    required VoidCallback onTap,
    String? text,
    SvgGenImage? icon,
    double? width,
    double height = 50,
    bool isEnabled = true,
    bool isLoading = false,
    bool isExpanded = false,
  }) {
    return AppButton(
      onTap: onTap,
      text: text,
      icon: icon,
      width: width,
      height: height,
      isEnabled: isEnabled,
      isLoading: isLoading,
      isExpanded: isExpanded,
      contentColor: AppColors.onBackground,
      backgroundColor: AppColors.onBackground.copyWithOpacity(.1),
    );
  }

  final VoidCallback onTap;

  final String? text;
  final SvgGenImage? icon;

  final double height;
  final double? width;

  final bool isEnabled;
  final bool isLoading;
  final bool isExpanded;

  final Color backgroundColor;
  final Color contentColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final bool canTap = isEnabled && !isLoading;

    final double adaptiveHeight = context.isDesktopLayout ? height : height * .8;

    return IgnorePointer(
      ignoring: !canTap,
      child: Tappable(
        onTap: onTap,
        child: Opacity(
          opacity: isEnabled ? 1 : .25,
          child: Container(
            height: adaptiveHeight,
            width: isExpanded ? double.maxFinite : width,
            padding: isExpanded ? null : const Pad(horizontal: 30),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: borderColor != null ? Border.all(color: borderColor!, width: 1) : null,
              borderRadius: BorderRadius.circular(adaptiveHeight / 2),
            ),
            child: !isLoading
                ? Row(
                    spacing: context.isDesktopLayout ? 10 : 7,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (text != null)
                        Text(
                          text!,
                          style: context.styles.body.copyWith(
                            fontSize: context.isDesktopLayout ? 14 : 12,
                            fontWeight: FontWeight.w600,
                            color: contentColor,
                          ),
                        ),
                      if (icon != null) icon!.svg(),
                    ],
                  )
                : SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(
                      color: contentColor,
                      strokeCap: StrokeCap.round,
                      strokeWidth: 3,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
