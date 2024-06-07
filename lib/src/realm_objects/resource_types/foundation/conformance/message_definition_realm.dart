import 'package:realm/realm.dart';
@RealmModel()
class _MessageDefinitionRealm {
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
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late List<_FhirCanonicalRealm> replaces;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirCanonicalRealm base;
  late List<_FhirCanonicalRealm> parent;
  late _CodingRealm eventCoding;
  late _FhirUriRealm eventUri;
  late _PrimitiveElementRealm eventUriElement;
  late _FhirCodeRealm category;
  late _PrimitiveElementRealm categoryElement;
  late List<_MessageDefinitionFocusRealm> focus;
  late _FhirCodeRealm responseRequired;
  late _PrimitiveElementRealm responseRequiredElement;
  late List<_MessageDefinitionAllowedResponseRealm> allowedResponse;
  late List<_FhirCanonicalRealm> graph;
}
@RealmModel()
class _MessageDefinitionFocusRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirCanonicalRealm profile;
  late _FhirUnsignedIntRealm min;
  late _PrimitiveElementRealm minElement;
  late String max;
  late _PrimitiveElementRealm maxElement;
}
@RealmModel()
class _MessageDefinitionAllowedResponseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCanonicalRealm message;
  late _FhirMarkdownRealm situation;
  late _PrimitiveElementRealm situationElement;
}
