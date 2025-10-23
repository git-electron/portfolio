part of '../../home_screen.dart';

class _Career extends StatefulWidget {
  const _Career({required this.controller});

  final ScrollController controller;

  static const int careerPagesCount = 3;
  int get pagesCount => careerPagesCount;

  @override
  State<_Career> createState() => _CareerState();
}

class _CareerState extends State<_Career> {
  late final ScrollController _horizontalController;

  @override
  void initState() {
    _horizontalController = ScrollController();
    widget.controller.addListener(_controllerListener);
    _horizontalController.dispose();
    super.initState();
  }

  @override
  void dispose() {
    _horizontalController.dispose();
    widget.controller.removeListener(_controllerListener);
    super.dispose();
  }

  void _controllerListener() {
    _horizontalController.jumpTo(
      ((widget.controller.offset) - context.sizeOf.height).clamp(0, context.sizeOf.height * (widget.pagesCount - 1)) /
          context.sizeOf.height *
          ((context.sizeOf.width).clamp(0, 1600) - WebPaddingWrapper.totalHorizontalValue(context)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            context.t.home.career.title,
            style: context.styles.title.copyWith(fontSize: context.isDesktopLayout ? 30 : 20),
          ),
        ),
        ListenableBuilder(
          listenable: widget.controller,
          builder: (context, child) {
            return _FloatingWrapper(
              controller: widget.controller,
              pagesCount: widget.pagesCount,
              child: SingleChildScrollView(
                controller: _horizontalController,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                physics: NeverScrollableScrollPhysics(),

                child: Row(
                  children: List.generate(
                    widget.pagesCount,
                    (index) => SizedBox(
                      height: context.sizeOf.height,
                      width: context.sizeOf.width.clamp(0, 1600) - WebPaddingWrapper.totalHorizontalValue(context),
                      child: _Tile(
                        index: index,
                        isFirst: index == 0,
                        isLast: index == widget.pagesCount - 1,
                      ),
                    ),
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

class _FloatingWrapper extends StatelessWidget {
  const _FloatingWrapper({
    required this.child,
    required this.controller,
    required this.pagesCount,
  });

  final Widget child;
  final ScrollController controller;

  final int pagesCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeOf.height * pagesCount,
      child: Padding(
        padding: Pad(
          top: ((controller.hasClients ? controller.offset : 0) - context.sizeOf.height).clamp(
            0,
            context.sizeOf.height * (pagesCount - 1),
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: context.sizeOf.height,
            child: child,
          ),
        ),
      ),
    );
  }
}
