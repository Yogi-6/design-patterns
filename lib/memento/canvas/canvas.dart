// Design a canvas where the user can put shapes and remove shapes.

void main(List<String> args) {}

/// Originator
class Canvas {}

/// Memento Contract
abstract class Shape {}

/// Memento Implementation
class Circle implements Shape {
  final int radius;

  const Circle({required this.radius});

  @override
  String toString() => 'Circle(radius: $radius)';
}

/// Caretaker contract
abstract class CanvasHistory {
  void pushShape(Shape shape);

  Shape popShape();
}

/// Catetaker implementation
class ListCanvasHistory implements CanvasHistory {
  final history = <Shape>[];

  @override
  Shape popShape() {
    throw UnimplementedError();
  }

  @override
  void pushShape(Shape shape) {}
}
