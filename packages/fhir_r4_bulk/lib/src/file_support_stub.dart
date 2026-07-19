/// Stub variant of the file-reading helpers for platforms without `dart:io`
/// (web, WASM). The real implementation lives in `file_support_io.dart` and
/// is selected by conditional import.
library;

import 'dart:typed_data';

Never _unsupported() => throw UnsupportedError(
      'Reading files from a path requires dart:io, which is not available '
      'on this platform. Load the content yourself and use fromNdJson or '
      'fromCompressedData instead.',
    );

/// File reading is unavailable on this platform.
Future<String> readFileAsString(String path) => _unsupported();

/// File reading is unavailable on this platform.
Future<Uint8List> readFileAsBytes(String path) => _unsupported();
