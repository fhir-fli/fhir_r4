import 'package:realm/realm.dart';
@RealmModel()
class _MessageHeaderRealm {
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
  late _CodingRealm eventCoding;
  late _FhirUriRealm eventUri;
  late _PrimitiveElementRealm eventUriElement;
  late List<_MessageHeaderDestinationRealm> destination;
  late _ReferenceRealm sender;
  late _ReferenceRealm enterer;
  late _ReferenceRealm author;
  late _MessageHeaderSourceRealm source;
  late _ReferenceRealm responsible;
  late _CodeableConceptRealm reason;
  late _MessageHeaderResponseRealm response;
  late List<_ReferenceRealm> focus;
  late _FhirCanonicalRealm definition;
}
@RealmModel()
class _MessageHeaderDestinationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _ReferenceRealm target;
  late _FhirUrlRealm endpoint;
  late _PrimitiveElementRealm endpointElement;
  late _ReferenceRealm receiver;
}
@RealmModel()
class _MessageHeaderSourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String software;
  late _PrimitiveElementRealm softwareElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _ContactPointRealm contact;
  late _FhirUrlRealm endpoint;
  late _PrimitiveElementRealm endpointElement;
}
@RealmModel()
class _MessageHeaderResponseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm identifier;
  late _PrimitiveElementRealm identifierElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _ReferenceRealm details;
}
