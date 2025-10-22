part of '../home_screen.dart';

class _Career extends StatefulWidget {
  const _Career({required this.controller});

  final ScrollController controller;

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
    _horizontalController.jumpTo(widget.controller.offset);
  }

  @override
  Widget build(BuildContext context) {
    final int pagesCount = 3; //TODO

    return Column(
      children: [
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
          listenable: widget.controller,
          builder: (context, child) {
            return _FloatingWrapper(
              controller: widget.controller,
              pagesCount: pagesCount,
              child: SingleChildScrollView(
                controller: _horizontalController,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                physics: NeverScrollableScrollPhysics(),

                child: Row(
                  children: List.generate(
                    pagesCount,
                    (index) => Container(
                      height: context.sizeOf.height,
                      width: context.sizeOf.width.clamp(0, 1600),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: context.colors.white.copyWithOpacity(.5),
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
            context.sizeOf.height * pagesCount,
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
