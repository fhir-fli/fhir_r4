import 'package:json_annotation/json_annotation.dart';

/// [Base] Base definition for all FHIR resources.
@JsonSerializable()
abstract class Base {
  String get fhirType;
}
