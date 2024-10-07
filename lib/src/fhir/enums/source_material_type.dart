import 'package:json_annotation/json_annotation.dart';

/// A classification that provides the origin of the substance raw material.
enum SourceMaterialType {
  /// Display: animal
  @JsonValue('Animal')
  Animal,

  /// Display: plant
  @JsonValue('Plant')
  Plant,

  /// Display: mineral
  @JsonValue('Mineral')
  Mineral,
  ;

  @override
  String toString() {
    switch (this) {
      case Animal:
        return 'Animal';
      case Plant:
        return 'Plant';
      case Mineral:
        return 'Mineral';
    }
  }

  String toJson() => toString();
  SourceMaterialType fromString(String str) {
    switch (str) {
      case 'Animal':
        return SourceMaterialType.Animal;
      case 'Plant':
        return SourceMaterialType.Plant;
      case 'Mineral':
        return SourceMaterialType.Mineral;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SourceMaterialType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
