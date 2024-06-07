import 'package:realm/realm.dart';
@RealmModel()
class _DeviceRequestRealm {
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
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> priorRequest;
  late _IdentifierRealm groupIdentifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm intent;
  late _PrimitiveElementRealm intentElement;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late _ReferenceRealm codeReference;
  late _CodeableConceptRealm codeCodeableConcept;
  late List<_DeviceRequestParameterRealm> parameter;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _TimingRealm occurrenceTiming;
  late String authoredOn;
  late _PrimitiveElementRealm authoredOnElement;
  late _ReferenceRealm requester;
  late _CodeableConceptRealm performerType;
  late _ReferenceRealm performer;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_ReferenceRealm> insurance;
  late List<_ReferenceRealm> supportingInfo;
  late List<_AnnotationRealm> note;
  late List<_ReferenceRealm> relevantHistory;
}
@RealmModel()
class _DeviceRequestParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
}
