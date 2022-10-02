import 'originator.dart';

// Memento
class CanvasMemento {
  final Shapes shapes;

  const CanvasMemento({required this.shapes});

  @override
  String toString() => 'CanvasMemento(shapes: $shapes)';
}

abstract class Shape {}

class Circle implements Shape {
  final int radius;

  const Circle({required this.radius});

  @override
  String toString() => 'Circle(radius: $radius)';
}

class Square implements Shape {
  final int side;

  const Square({required this.side});

  @override
  String toString() => 'Square(side: $side)';
}

/// Null Object Pattern
class NoShapesMemento implements CanvasMemento {
  @override
  Shapes get shapes => [];
}
