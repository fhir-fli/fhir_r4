import 'package:realm/realm.dart';
@RealmModel()
class _ConceptMapRealm {
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
  late _IdentifierRealm identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
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
  late _FhirUriRealm sourceUri;
  late _PrimitiveElementRealm sourceUriElement;
  late _FhirCanonicalRealm sourceCanonical;
  late _PrimitiveElementRealm sourceCanonicalElement;
  late _FhirUriRealm targetUri;
  late _PrimitiveElementRealm targetUriElement;
  late _FhirCanonicalRealm targetCanonical;
  late _PrimitiveElementRealm targetCanonicalElement;
  late List<_ConceptMapGroupRealm> group;
}
@RealmModel()
class _ConceptMapGroupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm source;
  late _PrimitiveElementRealm sourceElement;
  late String sourceVersion;
  late _PrimitiveElementRealm sourceVersionElement;
  late _FhirUriRealm target;
  late _PrimitiveElementRealm targetElement;
  late String targetVersion;
  late _PrimitiveElementRealm targetVersionElement;
  late List<_ConceptMapElementRealm> element;
  late _ConceptMapUnmappedRealm unmapped;
}
@RealmModel()
class _ConceptMapElementRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late List<_ConceptMapTargetRealm> target;
}
@RealmModel()
class _ConceptMapTargetRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late _FhirCodeRealm equivalence;
  late _PrimitiveElementRealm equivalenceElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
  late List<_ConceptMapDependsOnRealm> dependsOn;
  late List<_ConceptMapDependsOnRealm> product;
}
@RealmModel()
class _ConceptMapDependsOnRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm property;
  late _PrimitiveElementRealm propertyElement;
  late _FhirCanonicalRealm system;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
}
@RealmModel()
class _ConceptMapUnmappedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late _FhirCanonicalRealm url;
}
