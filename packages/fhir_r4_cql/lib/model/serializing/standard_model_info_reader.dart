import 'dart:convert';
import 'dart:io';

import 'package:xml2json/xml2json.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class StandardModelInfoReader implements ModelInfoReader {
  /// Replace this method with your actual XML parsing logic.
  @override
  ModelInfo read(String xmlContent) => _modelInfo(xmlContent);

  /// Reads model information from a file. throws IOException
  @override
  ModelInfo readFromFile(File file) {
    throw UnimplementedError();
  }

  /// Reads model information from a reader. throws IOException
  @override
  ModelInfo readFromFilePath(String filePath) {
    throw UnimplementedError();
  }

  /// Reads model information from an input stream. throws IOException
  @override
  ModelInfo readFromStream(Stream stream) {
    throw UnimplementedError();
  }

  /// Reads model information from a string. throws IOException
  @override
  ModelInfo readFromString(String string) {
    throw UnimplementedError();
  }

  /// Reads model information from a URI. throws IOException
  @override
  ModelInfo readFromUri(Uri uri) {
    throw UnimplementedError();
  }

  /// Reads model information from a URL. throws IOException
  @override
  ModelInfo readFromUrl(Uri url) {
    throw UnimplementedError();
  }

  ModelInfo _modelInfo(String modelContents) {
    final Xml2Json myTransformer = Xml2Json();
    myTransformer.parse(modelContents);
    final String json = myTransformer.toBadgerfish();
    final Map<String, dynamic> map = jsonDecode(json) as Map<String, dynamic>;
    var newMap = ModelInfoReader.removeAts(map);
    newMap =
        ModelInfoReader.removeModelName(newMap, newMap['modelInfo']['name']);

    if (newMap['modelInfo'] is Map) {
      final properMap = jsonDecode(jsonEncode((newMap['modelInfo'] as Map)));
      try {
        final modelInfo = ModelInfo.fromJson(properMap);
        return modelInfo;
      } catch (e) {
        print(e);
        rethrow;
      }
    }
    print(newMap['modelInfo']);
    throw Exception('Invalid modelInfo');
  }
}
