import 'shareable.dart';

// Mixin to provide a shared implementation
mixin ShareableMixin implements Shareable {
  @override
  void share(String content) {
    print('Share the $content');
  }
}
