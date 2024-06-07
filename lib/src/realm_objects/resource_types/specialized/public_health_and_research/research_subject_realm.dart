import 'package:realm/realm.dart';
@RealmModel()
class _ResearchSubjectRealm {
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
  late _PeriodRealm period;
  late _ReferenceRealm study;
  late _ReferenceRealm individual;
  late String assignedArm;
  late _PrimitiveElementRealm assignedArmElement;
  late String actualArm;
  late _PrimitiveElementRealm actualArmElement;
  late _ReferenceRealm consent;
}
