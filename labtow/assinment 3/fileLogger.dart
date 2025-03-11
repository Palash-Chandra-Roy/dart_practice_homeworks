import 'logger.dart';

class Filelogger implements Logger {
  @override
  String log(String message) {
    print("lala")
    return ("file logger:$message");
  }
}
