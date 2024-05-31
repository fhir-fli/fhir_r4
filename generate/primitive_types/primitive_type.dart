import 'package:freezed_annotation/freezed_annotation.dart';

import '../r4.dart';

@immutable
abstract class PrimitiveType extends Base {
  /// Returns the primitive value of the FHIR type.
  dynamic get value;

  /// Returns a JSON representation of the FHIR primitive.
  dynamic toJson();

  /// Returns a YAML representation of the FHIR primitive.
  dynamic toYaml();

  /// Checks if the value is valid according to the FHIR type constraints.
  bool get isValid;

  /// Returns the string representation of the FHIR primitive.
  @override
  String toString();

  /// Checks equality with another object.
  @override
  bool operator ==(Object other);

  /// Returns the hash code of the FHIR primitive.
  @override
  int get hashCode;
}
