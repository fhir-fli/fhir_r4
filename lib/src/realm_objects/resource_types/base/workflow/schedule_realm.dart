import 'package:realm/realm.dart';
@RealmModel()
class _ScheduleRealm {
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
  late _FhirBooleanRealm active;
  late _PrimitiveElementRealm activeElement;
  late List<_CodeableConceptRealm> serviceCategory;
  late List<_CodeableConceptRealm> serviceType;
  late List<_CodeableConceptRealm> specialty;
  late List<_ReferenceRealm> actor;
  late _PeriodRealm planningHorizon;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
