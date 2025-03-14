class Logger {
  final String name;
  static final _cache = <String, Logger>{};
  Logger._crate(this.name);

  factory Logger(name) => _cache.putIfAbsent(name, () => Logger._crate(name));

  void log(message) {
    // same Value print to log method
    print("Message");
  }
}
