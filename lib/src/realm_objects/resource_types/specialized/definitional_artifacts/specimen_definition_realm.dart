import 'package:realm/realm.dart';
@RealmModel()
class _SpecimenDefinitionRealm {
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
  late _IdentifierRealm identifier;
  late _CodeableConceptRealm typeCollected;
  late List<_CodeableConceptRealm> patientPreparation;
  late String timeAspect;
  late _PrimitiveElementRealm timeAspectElement;
  late List<_CodeableConceptRealm> collection;
  late List<_SpecimenDefinitionTypeTestedRealm> typeTested;
}
@RealmModel()
class _SpecimenDefinitionTypeTestedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm isDerived;
  late _PrimitiveElementRealm isDerivedElement;
  late _CodeableConceptRealm type;
  late _FhirCodeRealm preference;
  late _PrimitiveElementRealm preferenceElement;
  late _SpecimenDefinitionContainerRealm container;
  late String requirement;
  late _PrimitiveElementRealm requirementElement;
  late _FhirDurationRealm retentionTime;
  late List<_CodeableConceptRealm> rejectionCriterion;
  late List<_SpecimenDefinitionHandlingRealm> handling;
}
@RealmModel()
class _SpecimenDefinitionContainerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm material;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm cap;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _QuantityRealm capacity;
  late _QuantityRealm minimumVolumeQuantity;
  late String minimumVolumeString;
  late _PrimitiveElementRealm minimumVolumeStringElement;
  late List<_SpecimenDefinitionAdditiveRealm> additive;
  late String preparation;
  late _PrimitiveElementRealm preparationElement;
}
@RealmModel()
class _SpecimenDefinitionAdditiveRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm additiveCodeableConcept;
  late _ReferenceRealm additiveReference;
}
@RealmModel()
class _SpecimenDefinitionHandlingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm temperatureQualifier;
  late _RangeRealm temperatureRange;
  late _FhirDurationRealm maxDuration;
  late String instruction;
  late _PrimitiveElementRealm instructionElement;
}
