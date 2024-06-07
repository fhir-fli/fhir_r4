import 'package:realm/realm.dart';
@RealmModel()
class _AccountRealm {
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
  late _CodeableConceptRealm type;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late List<_ReferenceRealm> subject;
  late _PeriodRealm servicePeriod;
  late List<_AccountCoverageRealm> coverage;
  late _ReferenceRealm owner;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_AccountGuarantorRealm> guarantor;
  late _ReferenceRealm partOf;
}
@RealmModel()
class _AccountCoverageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm coverage;
  late _FhirPositiveIntRealm priority;
  late _PrimitiveElementRealm priorityElement;
}
@RealmModel()
class _AccountGuarantorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm party;
  late _FhirBooleanRealm onHold;
  late _PrimitiveElementRealm onHoldElement;
  late _PeriodRealm period;
}
