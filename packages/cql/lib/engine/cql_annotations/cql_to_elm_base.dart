import '../../cql.dart';

/// The CqlToElmBase type defines the abstract base type for all annotation
/// elements in the CQL Translator.
abstract class CqlToElmBase {
  CqlToElmBase();

  factory CqlToElmBase.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String?) {
      case 'Annotation':
        return Annotation.fromJson(json);
      case 'CqlToElmInfo':
        return CqlToElmInfo.fromJson(json);
      case 'CqlToElmError':
        return CqlToElmError.fromJson(json);
      case 'ErrorAnnotation':
        return ErrorAnnotation.fromJson(json);
      case 'Locator':
        return Locator.fromJson(json);
      case 'Tag':
        return Tag.fromJson(json);
      default:
        throw ArgumentError.value(
            json, 'json', 'Invalid CqlToElmBase type: ${json['type']}.');
    }
  }

  Map<String, dynamic> toJson();
}
