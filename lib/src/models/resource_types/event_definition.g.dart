part of 'event_definition.dart';

/// A code or group definition that describes the intended subject of the
/// event definition.
sealed class SubjectXEventDefinitionEventDefinition {}

/// A code or group definition that describes the intended subject of the
/// event definition.
class CodeableConceptSubjectEventDefinitionEventDefinition
    extends CodeableConcept implements SubjectXEventDefinitionEventDefinition {
  /// Factory constructor for super class
  factory CodeableConceptSubjectEventDefinitionEventDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectEventDefinitionEventDefinition;
}

/// A code or group definition that describes the intended subject of the
/// event definition.
class ReferenceSubjectEventDefinitionEventDefinition extends Reference
    implements SubjectXEventDefinitionEventDefinition {
  /// Factory constructor for super class
  factory ReferenceSubjectEventDefinitionEventDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubjectEventDefinitionEventDefinition;
}
