import 'package:design_patterns/builder/presentation/builders/presentation_builder.dart';
import 'package:design_patterns/builder/presentation/presentataion.dart';
import 'package:design_patterns/builder/presentation/slide.dart';

class VideoBuilder implements PresentationBuilder {
  final video = Video();

  @override
  void addSlide(Slide slide) => video.addFrame(slide.text, 5);
}
