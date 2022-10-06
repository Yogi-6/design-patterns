import 'package:design_patterns/prototype/canvas/shape.dart';

class Toolbar {
  final shapes = <Shape>[];

  void addShape(Shape shape) => shapes.add(shape);

  void duplicate(Shape shape) => shapes.add(shape.clone());
}
