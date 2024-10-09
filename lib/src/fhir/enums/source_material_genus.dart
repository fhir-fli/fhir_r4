import 'package:json_annotation/json_annotation.dart';

/// The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.
enum SourceMaterialGenus {
  /// Display: Mycobacterium
  @JsonValue('Mycobacterium')
  Mycobacterium,

  /// Display: Influenza A virus
  @JsonValue('InfluenzavirusA')
  InfluenzavirusA,

  /// Display: Ginkgo
  @JsonValue('Ginkgo')
  Ginkgo,
  ;

  @override
  String toString() {
    switch (this) {
      case Mycobacterium:
        return 'Mycobacterium';
      case InfluenzavirusA:
        return 'InfluenzavirusA';
      case Ginkgo:
        return 'Ginkgo';
    }
  }

  String toJson() => toString();
  static SourceMaterialGenus fromString(String str) {
    switch (str) {
      case 'Mycobacterium':
        return SourceMaterialGenus.Mycobacterium;
      case 'InfluenzavirusA':
        return SourceMaterialGenus.InfluenzavirusA;
      case 'Ginkgo':
        return SourceMaterialGenus.Ginkgo;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SourceMaterialGenus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
