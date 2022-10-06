import 'package:design_patterns/prototype/canvas/shape.dart';
import 'package:design_patterns/prototype/canvas/toolbar.dart';

void main(List<String> args) {
  final toolbar = Toolbar();
  final circleOne = Circle(radius: 4);
  final circleTwo = Circle(radius: 6);
  toolbar.addShape(circleOne);
  toolbar.addShape(circleTwo);

  print(toolbar.shapes);

  toolbar.duplicate(circleOne);

  print(toolbar.shapes);
}
