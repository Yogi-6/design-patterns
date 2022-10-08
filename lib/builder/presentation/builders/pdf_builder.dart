import 'package:design_patterns/builder/presentation/builders/presentation_builder.dart';
import 'package:design_patterns/builder/presentation/presentataion.dart';
import 'package:design_patterns/builder/presentation/slide.dart';

class PdfBuilder implements PresentationBuilder {
  final document = PdfDocument();

  @override
  void addSlide(Slide slide) => document.addPage(slide.text);
}
