import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/di/injector.dart';
import 'package:portfolio/core/domain/services/device_info_service.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/i18n/app_localization.g.dart';
import '../../../core/theme/theme_extensions.dart';
import '../../../core/wrappers/web_scroll_wrapper.dart';
import '../../ui/buttons/app_button.dart';

part 'widgets/header.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebScrollWrapper(
        controller: _controller,
        child: SingleChildScrollView(
          controller: _controller,
          physics: NeverScrollableScrollPhysics(),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const Pad(horizontal: 200),
              constraints: BoxConstraints(maxWidth: 1600),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Header(controller: _controller),
                  Text(
                    context.t.styles.header,
                    style: context.styles.header,
                  ),
                  Text(
                    context.t.styles.title,
                    style: context.styles.title,
                  ),
                  Text(
                    context.t.styles.body,
                    style: context.styles.body,
                  ),
                  Text(
                    context.t.styles.accent,
                    style: context.styles.accent,
                  ),
                  const Gap(10),
                  AppButton.primary(
                    onTap: () {
                      final AppLocale locale = LocaleSettings.currentLocale;
                      LocaleSettings.setLocale(switch (locale) {
                        AppLocale.en => AppLocale.ru,
                        AppLocale.ru => AppLocale.en,
                      });
                    },
                    text: context.t.changeLanguage,
                  ),
                  SizedBox(height: 1000),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
