import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
    methodCount: 2, // number of method calls to be displayed
    errorMethodCount: 5, // number of method calls if error occurred
    lineLength: 80, // width of each log line
    colors: true, // colorize log messages
    printEmojis: true, // print emojis
    printTime: true, // print timestamp
  ),
);
