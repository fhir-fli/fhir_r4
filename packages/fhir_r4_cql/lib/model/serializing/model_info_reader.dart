import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

abstract class ModelInfoReader {
  /// Replace this method with your actual XML parsing logic.
  ModelInfo read(String xmlContent);

  /// Reads model information from a file. throws IOException
  ModelInfo readFromFile(File file);

  /// Reads model information from a reader. throws IOException
  ModelInfo readFromFilePath(String filePath);

  /// Reads model information from an input stream. throws IOException
  ModelInfo readFromStream(Stream stream);

  /// Reads model information from a URL. throws IOException
  ModelInfo readFromUrl(Uri url);

  /// Reads model information from a URI. throws IOException
  ModelInfo readFromUri(Uri uri);

  /// Reads model information from a string. throws IOException
  ModelInfo readFromString(String string);

  static dynamic removeAts(dynamic value) {
    if (value is String) {
      var newValue = value;
      if (newValue.startsWith('@')) {
        newValue = newValue.replaceFirst('@', '');
      }
      if (newValue.startsWith('xsi:')) {
        newValue = newValue.replaceFirst('xsi:', '');
      }
      if (newValue.startsWith('ns4:')) {
        newValue = newValue.replaceFirst('ns4:', '');
      }
      return newValue;
    } else if (value is List) {
      return value.map((e) => removeAts(e)).toList();
    } else if (value is Map) {
      return value
          .map((key, value) => MapEntry(removeAts(key), removeAts(value)));
    } else {
      return value;
    }
  }

  static dynamic removeModelName(dynamic value, String modelName) {
    if (value is String) {
      if (value.startsWith('$modelName.')) {
        return value.replaceFirst('$modelName.', '');
      } else {
        return value;
      }
    } else if (value is List) {
      return value.map((e) => removeModelName(e, modelName)).toList();
    } else if (value is Map) {
      return value.map((key, value) => MapEntry(
          removeModelName(key, modelName), removeModelName(value, modelName)));
    } else {
      return value;
    }
  }
}
