import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/domain/models/layout_type.dart';
import 'package:portfolio/core/extensions/app_locale_extensions.dart';
import 'package:portfolio/core/extensions/context_extensions.dart';
import 'package:portfolio/presentation/ui/logo/logo.dart';
import 'package:portfolio/presentation/ui/scroll/web_single_child_scroll_view.dart';
import 'package:portfolio/presentation/ui/wrappers/tappable.dart';
import 'package:portfolio/presentation/ui/wrappers/web_padding.dart';

import '../../../core/gen/assets.gen.dart';
import '../../../core/i18n/app_localization.g.dart';
import '../../../core/theme/theme_extensions.dart';
import '../../ui/buttons/app_button.dart';

part 'widgets/header.dart';
part 'widgets/app_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  final ScrollController _horizontalController = ScrollController();

  @override
  void initState() {
    _controller.addListener(_controllerListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _controller.dispose();
    _horizontalController.dispose();
    super.dispose();
  }

  void _controllerListener() {
    _horizontalController.jumpTo(_controller.offset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _AppBar(
        controller: _controller,
        isMobileLayout: context.isMobileLayout,
      ),
      body: WebSingleChildScrollView(
        controller: _controller,
        shouldEnablePadding: true,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _Header(controller: _controller),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(context.sizeOf.height),
                Align(
                  alignment: Alignment.center,
                  child: Positioned(
                    child: Text(
                      context.t.home.career.title,
                      style: context.styles.title,
                    ),
                  ),
                ),
                ListenableBuilder(
                  listenable: _controller,
                  builder: (context, child) {
                    return SizedBox(
                      height: context.sizeOf.height * 3,
                      child: Padding(
                        padding: Pad(
                          top: ((_controller.hasClients ? _controller.offset : 0) - context.sizeOf.height).clamp(
                            0,
                            double.maxFinite,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: context.sizeOf.height,
                            child: SingleChildScrollView(
                              controller: _horizontalController,
                              scrollDirection: Axis.horizontal,
                              clipBehavior: Clip.none,
                              physics: NeverScrollableScrollPhysics(),
                              child: SizedBox(
                                width: context.sizeOf.width * 3,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('text' * 100, maxLines: 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
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
          ],
        ),
      ),
    );
  }
}
