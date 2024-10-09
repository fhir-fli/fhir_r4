import 'package:json_annotation/json_annotation.dart';

/// The overall intended use of a product.
enum ProductIntendedUse {
  /// Display: Prevention
  @JsonValue('Prevention')
  Prevention,

  /// Display: Treatment
  @JsonValue('Treatment')
  Treatment,

  /// Display: Alleviation
  @JsonValue('Alleviation')
  Alleviation,

  /// Display: Diagnosis
  @JsonValue('Diagnosis')
  Diagnosis,

  /// Display: Monitoring
  @JsonValue('Monitoring')
  Monitoring,
  ;

  @override
  String toString() {
    switch (this) {
      case Prevention:
        return 'Prevention';
      case Treatment:
        return 'Treatment';
      case Alleviation:
        return 'Alleviation';
      case Diagnosis:
        return 'Diagnosis';
      case Monitoring:
        return 'Monitoring';
    }
  }

  String toJson() => toString();
  static ProductIntendedUse fromString(String str) {
    switch (str) {
      case 'Prevention':
        return ProductIntendedUse.Prevention;
      case 'Treatment':
        return ProductIntendedUse.Treatment;
      case 'Alleviation':
        return ProductIntendedUse.Alleviation;
      case 'Diagnosis':
        return ProductIntendedUse.Diagnosis;
      case 'Monitoring':
        return ProductIntendedUse.Monitoring;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ProductIntendedUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
