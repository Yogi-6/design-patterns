// Design a canvas where the user can put shapes and remove shapes.

import 'memento.dart';

typedef Shapes = List<Shape>;

void main(List<String> args) {}

/// Originator
class Canvas {
  Shapes shapes = <Shape>[];

  CanvasMemento createMemento() => CanvasMemento(shapes: shapes.toList());

  void restoreMemento(CanvasMemento memento) => shapes = memento.shapes;

  void add(Shape shape) => shapes.add(shape);
}
