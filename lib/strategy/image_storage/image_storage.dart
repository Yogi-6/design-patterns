import 'dart:io';

void main(List<String> args) {
  final jpegCompressor = JpegCompressor();
  // final pngCompressor = PngCompressor();

  final imageStorage = ImageStorage(compressor: jpegCompressor);

  imageStorage.compress(File(''));
}

class ImageStorage {
  final Compressor compressor;

  const ImageStorage({required this.compressor});

  void compress(File file) {
    compressor.compress(file);
  }
}

abstract class Compressor {
  void compress(File file);
}

class JpegCompressor implements Compressor {
  @override
  void compress(File file) => print('compressing using JPEG');
}

class PngCompressor implements Compressor {
  @override
  void compress(File file) => print('Compressing using PNG');
}
