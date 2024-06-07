import 'package:realm/realm.dart';
@RealmModel()
class _SpecimenRealm {
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
  late _IdentifierRealm accessionIdentifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm type;
  late _ReferenceRealm subject;
  late String receivedTime;
  late _PrimitiveElementRealm receivedTimeElement;
  late List<_ReferenceRealm> parent;
  late List<_ReferenceRealm> request;
  late _SpecimenCollectionRealm collection;
  late List<_SpecimenProcessingRealm> processing;
  late List<_SpecimenContainerRealm> container;
  late List<_CodeableConceptRealm> condition;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _SpecimenCollectionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm collector;
  late String collectedDateTime;
  late _PrimitiveElementRealm collectedDateTimeElement;
  late _PeriodRealm collectedPeriod;
  late _FhirDurationRealm duration;
  late _QuantityRealm quantity;
  late _CodeableConceptRealm method;
  late _CodeableConceptRealm bodySite;
  late _CodeableConceptRealm fastingStatusCodeableConcept;
  late _FhirDurationRealm fastingStatusDuration;
}
@RealmModel()
class _SpecimenProcessingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm procedure;
  late List<_ReferenceRealm> additive;
  late String timeDateTime;
  late _PrimitiveElementRealm timeDateTimeElement;
  late _PeriodRealm timePeriod;
}
@RealmModel()
class _SpecimenContainerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm type;
  late _QuantityRealm capacity;
  late _QuantityRealm specimenQuantity;
  late _CodeableConceptRealm additiveCodeableConcept;
  late _ReferenceRealm additiveReference;
}
