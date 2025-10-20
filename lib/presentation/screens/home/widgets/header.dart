part of '../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header({required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            child: Padding(
              padding: const Pad(horizontal: 20),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.t.home.header.introduction,
                    style: context.styles.body.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Builder(
                    builder: (context) {
                      return FittedBox(
                        child: Transform.scale(
                          alignment: Alignment.topCenter,
                          scaleY: 2,
                          child: Text(
                            MediaQuery.of(context).size.width < 700
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
        ),
        ListenableBuilder(
          listenable: controller,
          builder: (context, child) {
            final double parallaxOffset = controller.offset / 2 - (context.isMobileLayout ? 200 : 100);

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
    );
  }
}
