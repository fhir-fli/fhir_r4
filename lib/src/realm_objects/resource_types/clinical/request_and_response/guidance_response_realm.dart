import 'package:realm/realm.dart';
@RealmModel()
class _GuidanceResponseRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm requestIdentifier;
  late List<_IdentifierRealm> identifier;
  late _FhirUriRealm moduleUri;
  late _PrimitiveElementRealm moduleUriElement;
  late _FhirCanonicalRealm moduleCanonical;
  late _PrimitiveElementRealm moduleCanonicalElement;
  late _CodeableConceptRealm moduleCodeableConcept;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _ReferenceRealm performer;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_AnnotationRealm> note;
  late List<_ReferenceRealm> evaluationMessage;
  late _ReferenceRealm outputParameters;
  late _ReferenceRealm result;
  late List<_DataRequirementRealm> dataRequirement;
}
