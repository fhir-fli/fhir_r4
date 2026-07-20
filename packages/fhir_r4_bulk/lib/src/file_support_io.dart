import 'dart:io';
import 'dart:typed_data';

/// Reads the file at [path] as a string.
Future<String> readFileAsString(String path) => File(path).readAsString();

/// Reads the file at [path] as bytes.
Future<Uint8List> readFileAsBytes(String path) => File(path).readAsBytes();
