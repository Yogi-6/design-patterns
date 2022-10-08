// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:design_patterns/builder/presentation/builders/presentation_builder.dart';
import 'package:design_patterns/builder/presentation/slide.dart';

class Presentation {
  final _slides = <Slide>[];

  void addSlide(Slide slide) => _slides.add(slide);

  void export(PresentationBuilder builder) {
    _slides.forEach((slide) {
      builder.addSlide(slide);
    });
  }
}

enum PresentationFormat {
  pdf,
  video,
}

class PdfDocument {
  void addPage(String text) => print('Adding page to PDF document.');
}

class Video {
  void addFrame(String text, int duration) => print('Adding frame to a movie');
}
