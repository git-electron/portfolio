part of '../home_screen.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.controller,
    required this.isMobileLayout,
  });

  final ScrollController controller;
  final bool isMobileLayout;

  double get _height => isMobileLayout ? 60 : 80;
  double get _iconHeight => _height - 20;

  @override
  Size get preferredSize => Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    if (!controller.hasClients) return const SizedBox();

    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) {
        return Blur(
          blur: controller.offset.clamp(0, 30),
          colorOpacity: (controller.offset / 100).clamp(0, .8),
          blurColor: context.colors.background,
          alignment: Alignment.bottomCenter,
          overlay: SizedBox(
            height: _height,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1600),
              child: WebPaddingWrapper(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: controller.offset != 0,
                      child: Opacity(
                        opacity: (controller.offset / 100).clamp(0, 1),
                        child: Row(
                          spacing: context.isMobileLayout ? 10 : 20,
                          children: [
                            Tappable(
                              onTap: () => controller.animateTo(
                                0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),
                              child: SizedBox.square(
                                dimension: _iconHeight,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Logo(
                                    size: _iconHeight - (20 - controller.offset / 5).clamp(0, 20),
                                  ),
                                ),
                              ),
                            ),
                            if (!context.isMobileLayout) Gap(0),
                            _AppBarNavigationItem(
                              text: context.t.home.app_bar.home,
                              startOffset: 0,
                              endOffset: context.sizeOf.height,
                              controller: controller,
                            ),
                            _AppBarNavigationItem(
                              text: context.t.home.app_bar.career,
                              startOffset: context.sizeOf.height,
                              endOffset: context.sizeOf.height * 4,
                              controller: controller,
                            ),
                            _AppBarNavigationItem(
                              text: context.t.home.app_bar.portfolio,
                              startOffset: context.sizeOf.height * 4,
                              endOffset: context.sizeOf.height * 5,
                              controller: controller,
                            ),
                            _AppBarNavigationItem(
                              text: context.t.home.app_bar.contacts,
                              startOffset: context.sizeOf.height * 5,
                              endOffset: context.sizeOf.height * 6,
                              controller: controller,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: PopupMenuButton<AppLocale>(
                        tooltip: '',
                        icon: Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.language_sharp),
                            Text(
                              LocaleSettings.currentLocale.title,
                              style: context.styles.body,
                            ),
                          ],
                        ),
                        padding: Pad(horizontal: 10),
                        menuPadding: Pad.zero,
                        onSelected: LocaleSettings.setLocale,
                        itemBuilder: (BuildContext context) {
                          return AppLocale.values.map((AppLocale locale) {
                            return PopupMenuItem<AppLocale>(
                              value: locale,
                              child: Text(
                                locale.title,
                                style: context.styles.body,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: SizedBox(
            height: _height,
            width: double.maxFinite,
          ),
        );
      },
    );
  }
}

class _AppBarNavigationItem extends StatelessWidget {
  const _AppBarNavigationItem({
    required this.text,
    required this.startOffset,
    required this.endOffset,
    required this.controller,
  });

  final String text;
  final double startOffset;
  final double endOffset;

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () => controller.animateTo(
        startOffset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      ),
      child: Text(
        text,
        style: _isSelected(context)
            ? context.styles.body.copyWith(
                color: context.colors.primary,
                decoration: TextDecoration.underline,
                decorationColor: context.colors.primary,
              )
            : context.styles.body.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  bool _isSelected(BuildContext context) => controller.offset >= startOffset && controller.offset < endOffset;
}
