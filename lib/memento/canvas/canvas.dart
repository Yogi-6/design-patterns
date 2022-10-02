import 'package:design_patterns/memento/canvas/caretaker.dart';
import 'package:design_patterns/memento/canvas/memento.dart';
import 'package:design_patterns/memento/canvas/originator.dart';

void main(List<String> args) {
  // final square = Square(side: 5);
  // final circle = Circle(radius: 4);

  final canvas = Canvas();
  final history = ListCanvasHistory();

  canvas.add(Square(side: 5));
  canvas.add(Circle(radius: 8));

  history.push(canvas.createMemento());

  canvas.add(Circle(radius: 4));

  canvas.restoreMemento(history.pop());

  print(canvas.shapes);
}
