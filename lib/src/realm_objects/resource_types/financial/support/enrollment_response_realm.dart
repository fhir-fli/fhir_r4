import 'package:realm/realm.dart';
@RealmModel()
class _EnrollmentResponseRealm {
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
  late _ReferenceRealm request;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String disposition;
  late _PrimitiveElementRealm dispositionElement;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm organization;
  late _ReferenceRealm requestProvider;
}
