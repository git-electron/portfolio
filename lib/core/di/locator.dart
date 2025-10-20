import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class Locator {
  const Locator();

  Logger get logger => Logger(
    level: Level.all,
    output: ConsoleOutput(),
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 4,
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),
  );
}
