import 'package:realm/realm.dart';
@RealmModel()
class _ManufacturedItemDefinitionRealm {
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
  late _CodeableConceptRealm manufacturedDoseForm;
  late _CodeableConceptRealm unitOfPresentation;
  late List<_ReferenceRealm> manufacturer;
  late List<_CodeableConceptRealm> ingredient;
  late List<_ManufacturedItemDefinitionPropertyRealm> property;
}
@RealmModel()
class _ManufacturedItemDefinitionPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _AttachmentRealm valueAttachment;
}
