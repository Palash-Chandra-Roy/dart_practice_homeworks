import 'shape.dart';

class Regain<T extends Shape> {
  List<T> shapes = [];

  @override
  void addShape(T shape) {
    shapes.add(shape);
  }

  @override
  double get totalArea {
    return shapes.fold(0, (sum, shape) => sum + shape.area());
  }
}
