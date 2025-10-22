part of '../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header({required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            ListenableBuilder(
              listenable: controller,
              builder: (context, child) {
                return Opacity(
                  opacity: (0.5 - controller.offset / 800).clamp(0, 1),
                  child: Assets.images.header.mainBackground.image(),
                );
              },
            ),
            Positioned.fill(
              child: Align(
                alignment: FractionalOffset(.5, .15),
                child: Column(
                  spacing: 30,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.t.home.header.introduction,
                      style: context.styles.body.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        return FittedBox(
                          child: Transform.scale(
                            alignment: Alignment.topCenter,
                            scaleY: 1.5,
                            child: Text(
                              context.isMobileLayout
                                  ? context.t.home.header.name.mobile
                                  : context.t.home.header.name.desktop,
                              style: context.styles.header.copyWith(
                                color: context.colors.primary,
                                fontSize: 100,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            ListenableBuilder(
              listenable: controller,
              builder: (context, child) {
                final double parallaxOffset = controller.offset / 2 - (context.isMobileLayout ? 220 : 120);

                return Positioned.fill(
                  top: -parallaxOffset,
                  bottom: parallaxOffset,
                  child: Transform.scale(
                    scale: context.isMobileLayout ? 1.5 : 1.4,
                    child: Assets.images.header.mainPhoto.image(),
                  ),
                );
              },
            ),
          ],
        ),
        ListenableBuilder(
          listenable: controller,
          builder: (context, child) {
            final double parallaxOffset = controller.offset / 6;

            return Opacity(
              opacity: (1 - controller.offset / 800).clamp(0, 1),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1600 - WebPaddingWrapper.totalHorizontalValue(context),
                  maxHeight: context.sizeOf.height,
                  minHeight: context.sizeOf.height,
                ),
                child: Padding(
                  padding: Pad(bottom: 50 + parallaxOffset),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: switch (context.layoutType) {
                            LayoutType.desktop => context.sizeOf.width * .2,
                            LayoutType.tablet => context.sizeOf.width * .3,
                            LayoutType.mobile => context.sizeOf.width * .35,
                          },
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _ContactText(
                              onTap: () => $<UrlLauncher>().launchPhoneNumberString('+7 (931) 288-20-04'),
                              icon: Assets.icons.contacts.phone.light,
                              text: '+7 (931) 288-20-04',
                            ),
                            _ContactText(
                              onTap: () => $<UrlLauncher>().launchEmailString('egor.myadzuta@gmail.com'),
                              icon: Assets.icons.contacts.email.light,
                              text: 'egor.myadzuta@gmail.com',
                            ),
                            const Gap(20),
                            AppButton.primary(
                              onTap: () => controller.animateTo(
                                context.sizeOf.height * 5,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),
                              text: context.t.home.header.contact_button,
                            ),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: switch (context.layoutType) {
                            LayoutType.desktop => (context.sizeOf.width * .25).clamp(0, 500),
                            LayoutType.tablet => context.sizeOf.width * .3,
                            LayoutType.mobile => context.sizeOf.width * .4,
                          },
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.t.home.header.description,
                              style: context.styles.body.copyWith(fontSize: context.isDesktopLayout ? 12 : 10),
                              textAlign: TextAlign.justify,
                            ),
                            const Gap(20),
                            Wrap(
                              spacing: 15,
                              children: [
                                _ContactText(
                                  onTap: () => $<UrlLauncher>().launchUrlString('https://github.com/git-electron'),
                                  icon: Assets.icons.contacts.github.primary,
                                  shouldUpscaleIcon: true,
                                  text: 'GitHub',
                                ),
                                _ContactText(
                                  onTap: () => $<UrlLauncher>().launchUrlString(
                                    'https://hh.ru/resume/3ec16665ff0973146d0039ed1f696b35496433',
                                  ),
                                  icon: Assets.icons.contacts.hh.primary,
                                  shouldUpscaleIcon: true,
                                  text: 'HeadHunter',
                                ),
                                _ContactText(
                                  onTap: () => $<UrlLauncher>().launchUrlString('https://t.me/drwwzy'),
                                  icon: Assets.icons.contacts.telegram.primary,
                                  shouldUpscaleIcon: true,
                                  text: 'Telegram',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _ContactText extends StatelessWidget {
  const _ContactText({
    required this.icon,
    required this.text,
    required this.onTap,
    this.shouldUpscaleIcon = false,
  });

  final String text;
  final SvgGenImage icon;
  final VoidCallback onTap;

  final bool shouldUpscaleIcon;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: onTap,
      child: Row(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon.svg(
            clipBehavior: Clip.antiAlias,
            height: _iconSize(context),
            width: _iconSize(context),
          ),
          Text(
            text,
            style: context.styles.body.copyWith(
              fontSize: context.isDesktopLayout ? 12 : 10,
            ),
          ),
        ],
      ),
    );
  }

  double _iconSize(BuildContext context) {
    final double size = context.isDesktopLayout ? 18 : 14;
    final double upscaledSize = context.isDesktopLayout ? 30 : 26;
    return shouldUpscaleIcon ? upscaledSize : size;
  }
}
