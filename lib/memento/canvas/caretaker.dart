import 'package:design_patterns/memento/canvas/memento.dart';

/// Caretaker contract
abstract class CanvasHistory {
  void push(CanvasMemento shapes);

  CanvasMemento pop();
}

/// Catetaker implementation
class ListCanvasHistory implements CanvasHistory {
  final _shapes = <CanvasMemento>[];

  @override
  void push(CanvasMemento shapes) => _shapes.add(shapes);

  @override
  CanvasMemento pop() {
    if (_shapes.isEmpty) return NoShapesMemento();

    return _shapes.removeLast();
  }
}
