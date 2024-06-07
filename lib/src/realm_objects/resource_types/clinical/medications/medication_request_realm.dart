import 'package:realm/realm.dart';
@RealmModel()
class _MedicationRequestRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReason;
  late _FhirCodeRealm intent;
  late _PrimitiveElementRealm intentElement;
  late List<_CodeableConceptRealm> category;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late _FhirBooleanRealm doNotPerform;
  late _PrimitiveElementRealm doNotPerformElement;
  late _FhirBooleanRealm reportedBoolean;
  late _PrimitiveElementRealm reportedBooleanElement;
  late _ReferenceRealm reportedReference;
  late _CodeableConceptRealm medicationCodeableConcept;
  late _ReferenceRealm medicationReference;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late List<_ReferenceRealm> supportingInformation;
  late String authoredOn;
  late _PrimitiveElementRealm authoredOnElement;
  late _ReferenceRealm requester;
  late _ReferenceRealm performer;
  late _CodeableConceptRealm performerType;
  late _ReferenceRealm recorder;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_ElementRealm> instantiatesCanonicalElement;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late _IdentifierRealm groupIdentifier;
  late _CodeableConceptRealm courseOfTherapyType;
  late List<_ReferenceRealm> insurance;
  late List<_AnnotationRealm> note;
  late List<_DosageRealm> dosageInstruction;
  late _MedicationRequestDispenseRequestRealm dispenseRequest;
  late _MedicationRequestSubstitutionRealm substitution;
  late _ReferenceRealm priorPrescription;
  late List<_ReferenceRealm> detectedIssue;
  late List<_ReferenceRealm> eventHistory;
}
@RealmModel()
class _MedicationRequestDispenseRequestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _MedicationRequestInitialFillRealm initialFill;
  late _FhirDurationRealm dispenseInterval;
  late _PeriodRealm validityPeriod;
  late _FhirUnsignedIntRealm numberOfRepeatsAllowed;
  late _PrimitiveElementRealm numberOfRepeatsAllowedElement;
  late _QuantityRealm quantity;
  late _FhirDurationRealm expectedSupplyDuration;
  late _ReferenceRealm performer;
}
@RealmModel()
class _MedicationRequestInitialFillRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm quantity;
  late _FhirDurationRealm duration;
}
@RealmModel()
class _MedicationRequestSubstitutionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm allowedBoolean;
  late _PrimitiveElementRealm allowedBooleanElement;
  late _CodeableConceptRealm allowedCodeableConcept;
  late _CodeableConceptRealm reason;
}
