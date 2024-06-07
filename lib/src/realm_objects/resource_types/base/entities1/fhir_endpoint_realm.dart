import 'package:realm/realm.dart';
@RealmModel()
class _FhirEndpointRealm {
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
  late _EndpointStatusRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodingRealm connectionType;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _ReferenceRealm managingOrganization;
  late List<_ContactPointRealm> contact;
  late _PeriodRealm period;
  late List<_CodeableConceptRealm> payloadType;
  late List<_FhirCodeRealm> payloadMimeType;
  late List<_PrimitiveElementRealm> payloadMimeTypeElement;
  late _FhirUrlRealm address;
  late _PrimitiveElementRealm addressElement;
  late String header;
  late List<_PrimitiveElementRealm> headerElement;
}
