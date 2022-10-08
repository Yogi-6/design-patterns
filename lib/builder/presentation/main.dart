import 'package:design_patterns/builder/presentation/builders/pdf_builder.dart';
import 'package:design_patterns/builder/presentation/presentataion.dart';
import 'package:design_patterns/builder/presentation/slide.dart';

void main(List<String> args) {
  final presentation = Presentation();
  presentation.addSlide(Slide(text: 'Slide 1'));
  presentation.addSlide(Slide(text: 'Slide 2'));

  final pdfBuilder = PdfBuilder();
  presentation.export(pdfBuilder);

  print(pdfBuilder.document);
}
