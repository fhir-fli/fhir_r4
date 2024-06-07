import 'package:realm/realm.dart';
@RealmModel()
class _FlagRealm {
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
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _PeriodRealm period;
  late _ReferenceRealm encounter;
  late _ReferenceRealm author;
}
