// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Shape {
  void render();
  Shape clone();
}

class Circle implements Shape {
  final int radius;

  const Circle({required this.radius});
  @override
  Shape clone() => Circle(radius: radius);

  @override
  void render() => print('rendering a circle.');

  @override
  String toString() => 'Circle(radius: $radius)';
}
