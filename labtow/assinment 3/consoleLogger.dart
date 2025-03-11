import 'logger.dart';

class Consolelogger implements Logger {
  @override
  String log(String message) {
    return ("Console log: $message");
  }
}
