import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/di/injector.dart';
import 'package:portfolio/core/domain/models/layout_type.dart';
import 'package:portfolio/core/extensions/app_locale_extensions.dart';
import 'package:portfolio/core/extensions/color_extensions.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';
import 'package:portfolio/core/utils/url_launcher/url_launcher.dart';
import 'package:portfolio/presentation/ui/logo/logo.dart';
import 'package:portfolio/presentation/ui/scroll/web_single_child_scroll_view.dart';
import 'package:portfolio/presentation/ui/wrappers/tappable.dart';
import 'package:portfolio/presentation/ui/wrappers/web_padding.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/i18n/app_localization.g.dart';
import '../../../core/theme/theme_extensions.dart';
import '../../ui/buttons/app_button.dart';

part 'widgets/header.dart';
part 'widgets/career.dart';
part 'widgets/app_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _controller.jumpTo(-1));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _AppBar(
        controller: _controller,
        isMobileLayout: context.isMobileLayout,
      ),
      body: WebSingleChildScrollView(
        controller: _controller,
        shouldEnablePadding: true,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1600 - WebPaddingWrapper.totalHorizontalValue(context)),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _Header(controller: _controller),
              Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(context.sizeOf.height),
                  _Career(controller: _controller),
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
            ],
          ),
        ),
      ),
    );
  }
}
