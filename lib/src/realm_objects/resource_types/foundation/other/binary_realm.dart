import 'package:realm/realm.dart';
@RealmModel()
class _BinaryRealm {
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
  late _FhirCodeRealm contentType;
  late _PrimitiveElementRealm contentTypeElement;
  late _ReferenceRealm securityContext;
  late _FhirBase64BinaryRealm data;
  late _PrimitiveElementRealm dataElement;
}
