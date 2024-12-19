part of 'research_definition.dart';

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
sealed class SubjectXResearchDefinitionResearchDefinition {}

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
class CodeableConceptSubjectResearchDefinitionResearchDefinition
    extends CodeableConcept
    implements SubjectXResearchDefinitionResearchDefinition {
  /// Factory constructor for super class
  factory CodeableConceptSubjectResearchDefinitionResearchDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubjectResearchDefinitionResearchDefinition;
}

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
class ReferenceSubjectResearchDefinitionResearchDefinition extends Reference
    implements SubjectXResearchDefinitionResearchDefinition {
  /// Factory constructor for super class
  factory ReferenceSubjectResearchDefinitionResearchDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceSubjectResearchDefinitionResearchDefinition;
}
