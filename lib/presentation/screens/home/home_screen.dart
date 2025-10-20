import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';
import 'package:portfolio/presentation/ui/scroll/web_single_child_scroll_view.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/i18n/app_localization.g.dart';
import '../../../core/theme/theme_extensions.dart';
import '../../ui/buttons/app_button.dart';

part 'widgets/header.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebSingleChildScrollView(
        controller: _controller,
        shouldEnablePadding: true,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _Header(controller: _controller),
            Gap(context.isMobileLayout ? 200 : 100),
            Text(
              'Block title',
              style: context.styles.title,
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
              text: 'Change language',
            ),
            SizedBox(height: 1000),
          ],
        ),
      ),
    );
  }
}
