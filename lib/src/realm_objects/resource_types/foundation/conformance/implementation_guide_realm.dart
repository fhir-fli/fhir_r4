import 'package:realm/realm.dart';
@RealmModel()
class _ImplementationGuideRealm {
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
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirIdRealm packageId;
  late _PrimitiveElementRealm packageIdElement;
  late _FhirCodeRealm license;
  late _PrimitiveElementRealm licenseElement;
  late List<_FhirCodeRealm> fhirVersion;
  late List<_PrimitiveElementRealm> fhirVersionElement;
  late List<_ImplementationGuideDependsOnRealm> dependsOn;
  late List<_ImplementationGuideGlobalRealm> global;
  late _ImplementationGuideDefinitionRealm definition;
  late _ImplementationGuideManifestRealm manifest;
}
@RealmModel()
class _ImplementationGuideDependsOnRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCanonicalRealm uri;
  late _FhirIdRealm packageId;
  late _PrimitiveElementRealm packageIdElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
}
@RealmModel()
class _ImplementationGuideGlobalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCanonicalRealm profile;
}
@RealmModel()
class _ImplementationGuideDefinitionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ImplementationGuideGroupingRealm> grouping;
  late List<_ImplementationGuideResourceRealm> resource;
  late _ImplementationGuidePageRealm page;
  late List<_ImplementationGuideParameterRealm> parameter;
  late List<_ImplementationGuideTemplateRealm> template;
}
@RealmModel()
class _ImplementationGuideGroupingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _ImplementationGuideResourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm reference;
  late List<_FhirCodeRealm> fhirVersion;
  late List<_PrimitiveElementRealm> fhirVersionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirBooleanRealm exampleBoolean;
  late _PrimitiveElementRealm exampleBooleanElement;
  late _FhirCanonicalRealm exampleCanonical;
  late _PrimitiveElementRealm exampleCanonicalElement;
  late _FhirIdRealm groupingId;
  late _PrimitiveElementRealm groupingIdElement;
}
@RealmModel()
class _ImplementationGuidePageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUrlRealm nameUrl;
  late _PrimitiveElementRealm nameUrlElement;
  late _ReferenceRealm nameReference;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirCodeRealm generation;
  late _PrimitiveElementRealm generationElement;
  late List<_ImplementationGuidePageRealm> page;
}
@RealmModel()
class _ImplementationGuideParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _ImplementationGuideTemplateRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String source;
  late _PrimitiveElementRealm sourceElement;
  late String scope;
  late _PrimitiveElementRealm scopeElement;
}
@RealmModel()
class _ImplementationGuideManifestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUrlRealm rendering;
  late _PrimitiveElementRealm renderingElement;
  late List<_ImplementationGuideResource1Realm> resource;
  late List<_ImplementationGuidePage1Realm> page;
  late String image;
  late List<_PrimitiveElementRealm> imageElement;
  late String other;
  late List<_PrimitiveElementRealm> otherElement;
}
@RealmModel()
class _ImplementationGuideResource1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm reference;
  late _FhirBooleanRealm exampleBoolean;
  late _PrimitiveElementRealm exampleBooleanElement;
  late _FhirCanonicalRealm exampleCanonical;
  late _PrimitiveElementRealm exampleCanonicalElement;
  late _FhirUrlRealm relativePath;
  late _PrimitiveElementRealm relativePathElement;
}
@RealmModel()
class _ImplementationGuidePage1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String anchor;
  late List<_PrimitiveElementRealm> anchorElement;
}
