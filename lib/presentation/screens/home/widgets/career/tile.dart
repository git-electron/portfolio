part of '../../home_screen.dart';

class _Tile extends StatelessWidget {
  const _Tile({
    required this.index,
    this.isFirst = false,
    this.isLast = false,
  });

  final int index;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(vertical: 50, top: 30),
      child: Column(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            $<CareerService>().getWorkplaceYears(index),
            style: context.styles.header.copyWith(
              fontSize: 20,
              color: context.colors.text.copyWithOpacity(.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                $<CareerService>().getWorkplaceTitle(index),
                style: context.styles.header.copyWith(fontSize: 30),
              ),
              if (isLast)
                Text(
                  DateTime.now().year.toString(),
                  style: context.styles.header.copyWith(
                    fontSize: 20,
                    color: context.colors.text.copyWithOpacity(.5),
                  ),
                ),
            ],
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Divider(
                height: 3,
                thickness: 3,
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.white,
                ),
                padding: const Pad(all: 3),
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colors.background,
                  ),
                ),
              ),
              if (isLast)
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.white,
                    ),
                    padding: const Pad(all: 3),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.background,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Gap(10),
          Padding(
            padding: Pad(right: WebPaddingWrapper.totalHorizontalValue(context)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.colors.white.copyWithOpacity(.05),
              ),
              padding: const Pad(all: 20),
              child: Text(
                $<CareerService>().getWorkplaceDescription(index, context: context),
                style: context.styles.body.copyWith(
                  fontSize: context.isDesktopLayout ? null : 12,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
