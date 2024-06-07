import 'package:realm/realm.dart';
@RealmModel()
class _MedicationDispenseRealm {
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
  late List<_IdentifierRealm> identifier;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReasonCodeableConcept;
  late _ReferenceRealm statusReasonReference;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm medicationCodeableConcept;
  late _ReferenceRealm medicationReference;
  late _ReferenceRealm subject;
  late _ReferenceRealm context;
  late List<_ReferenceRealm> supportingInformation;
  late List<_MedicationDispensePerformerRealm> performer;
  late _ReferenceRealm location;
  late List<_ReferenceRealm> authorizingPrescription;
  late _CodeableConceptRealm type;
  late _QuantityRealm quantity;
  late _QuantityRealm daysSupply;
  late String whenPrepared;
  late _PrimitiveElementRealm whenPreparedElement;
  late String whenHandedOver;
  late _PrimitiveElementRealm whenHandedOverElement;
  late _ReferenceRealm destination;
  late List<_ReferenceRealm> receiver;
  late List<_AnnotationRealm> note;
  late List<_DosageRealm> dosageInstruction;
  late _MedicationDispenseSubstitutionRealm substitution;
  late List<_ReferenceRealm> detectedIssue;
  late List<_ReferenceRealm> eventHistory;
}
@RealmModel()
class _MedicationDispensePerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
}
@RealmModel()
class _MedicationDispenseSubstitutionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm wasSubstituted;
  late _PrimitiveElementRealm wasSubstitutedElement;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> reason;
  late List<_ReferenceRealm> responsibleParty;
}
