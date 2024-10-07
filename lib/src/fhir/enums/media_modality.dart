import 'package:json_annotation/json_annotation.dart';

/// Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
enum MediaModality {
  /// Display: Diagram
  /// Definition: A diagram. Often used in diagnostic reports
  @JsonValue('diagram')
  diagram,

  /// Display: Fax
  /// Definition: A digital record of a fax document
  @JsonValue('fax')
  fax,

  /// Display: Scanned Document
  /// Definition: A digital scan of a document. This is reserved for when there is not enough metadata to create a document reference
  @JsonValue('scan')
  scan,

  /// Display: Retina Scan
  /// Definition: A retinal image used for identification purposes
  @JsonValue('retina')
  retina,

  /// Display: Fingerprint
  /// Definition: A finger print scan used for identification purposes
  @JsonValue('fingerprint')
  fingerprint,

  /// Display: Iris Scan
  /// Definition: An iris scan used for identification purposes
  @JsonValue('iris')
  iris,

  /// Display: Palm Scan
  /// Definition: A palm scan used for identification purposes
  @JsonValue('palm')
  palm,

  /// Display: Face Scan
  /// Definition: A face scan used for identification purposes
  @JsonValue('face')
  face,
  ;

  @override
  String toString() {
    switch (this) {
      case diagram:
        return 'diagram';
      case fax:
        return 'fax';
      case scan:
        return 'scan';
      case retina:
        return 'retina';
      case fingerprint:
        return 'fingerprint';
      case iris:
        return 'iris';
      case palm:
        return 'palm';
      case face:
        return 'face';
    }
  }

  String toJson() => toString();
  MediaModality fromString(String str) {
    switch (str) {
      case 'diagram':
        return MediaModality.diagram;
      case 'fax':
        return MediaModality.fax;
      case 'scan':
        return MediaModality.scan;
      case 'retina':
        return MediaModality.retina;
      case 'fingerprint':
        return MediaModality.fingerprint;
      case 'iris':
        return MediaModality.iris;
      case 'palm':
        return MediaModality.palm;
      case 'face':
        return MediaModality.face;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MediaModality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
