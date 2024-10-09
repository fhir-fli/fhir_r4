import 'package:json_annotation/json_annotation.dart';

/// Biologically Derived Product Status.
enum BiologicallyDerivedProductStatus {
  /// Display: Available
  /// Definition: Product is currently available for use.
  @JsonValue('available')
  available,

  /// Display: Unavailable
  /// Definition: Product is not currently available for use.
  @JsonValue('unavailable')
  unavailable,
  ;

  @override
  String toString() {
    switch (this) {
      case available:
        return 'available';
      case unavailable:
        return 'unavailable';
    }
  }

  String toJson() => toString();
  static BiologicallyDerivedProductStatus fromString(String str) {
    switch (str) {
      case 'available':
        return BiologicallyDerivedProductStatus.available;
      case 'unavailable':
        return BiologicallyDerivedProductStatus.unavailable;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static BiologicallyDerivedProductStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
