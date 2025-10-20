import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/i18n/app_localization.g.dart';
import 'package:portfolio/core/theme/theme_extensions.dart';
import 'package:portfolio/presentation/ui/buttons/app_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
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
          ],
        ),
      ),
    );
  }
}
