import 'package:realm/realm.dart';
@RealmModel()
class _CapabilityStatementRealm {
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
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late List<_FhirCanonicalRealm> instantiates;
  late List<_FhirCanonicalRealm> imports;
  late _CapabilityStatementSoftwareRealm software;
  late _CapabilityStatementImplementationRealm implementation;
  late _FhirCodeRealm fhirVersion;
  late _PrimitiveElementRealm fhirVersionElement;
  late List<_FhirCodeRealm> format;
  late List<_PrimitiveElementRealm> formatElement;
  late List<_FhirCodeRealm> patchFormat;
  late List<_PrimitiveElementRealm> patchFormatElement;
  late List<_FhirCanonicalRealm> implementationGuide;
  late List<_CapabilityStatementRestRealm> rest;
  late List<_CapabilityStatementMessagingRealm> messaging;
  late List<_CapabilityStatementDocumentRealm> document;
}
@RealmModel()
class _CapabilityStatementSoftwareRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String releaseDate;
  late _PrimitiveElementRealm releaseDateElement;
}
@RealmModel()
class _CapabilityStatementImplementationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirUrlRealm url;
  late _PrimitiveElementRealm urlElement;
  late _ReferenceRealm custodian;
}
@RealmModel()
class _CapabilityStatementRestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
  late _CapabilityStatementSecurityRealm security;
  late List<_CapabilityStatementResourceRealm> resource;
  late List<_CapabilityStatementInteraction1Realm> interaction;
  late List<_CapabilityStatementSearchParamRealm> searchParam;
  late List<_CapabilityStatementOperationRealm> operation;
  late List<_FhirCanonicalRealm> compartment;
}
@RealmModel()
class _CapabilityStatementSecurityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm cors;
  late _PrimitiveElementRealm corsElement;
  late List<_CodeableConceptRealm> service;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _CapabilityStatementResourceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirCanonicalRealm profile;
  late List<_FhirCanonicalRealm> supportedProfile;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
  late List<_CapabilityStatementInteractionRealm> interaction;
  late _FhirCodeRealm versioning;
  late _PrimitiveElementRealm versioningElement;
  late _FhirBooleanRealm readHistory;
  late _PrimitiveElementRealm readHistoryElement;
  late _FhirBooleanRealm updateCreate;
  late _PrimitiveElementRealm updateCreateElement;
  late _FhirBooleanRealm conditionalCreate;
  late _PrimitiveElementRealm conditionalCreateElement;
  late _FhirCodeRealm conditionalRead;
  late _PrimitiveElementRealm conditionalReadElement;
  late _FhirBooleanRealm conditionalUpdate;
  late _PrimitiveElementRealm conditionalUpdateElement;
  late _FhirCodeRealm conditionalDelete;
  late _PrimitiveElementRealm conditionalDeleteElement;
  late List<_FhirCodeRealm> referencePolicy;
  late List<_PrimitiveElementRealm> referencePolicyElement;
  late String searchInclude;
  late List<_PrimitiveElementRealm> searchIncludeElement;
  late String searchRevInclude;
  late List<_PrimitiveElementRealm> searchRevIncludeElement;
  late List<_CapabilityStatementSearchParamRealm> searchParam;
  late List<_CapabilityStatementOperationRealm> operation;
}
@RealmModel()
class _CapabilityStatementInteractionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _CapabilityStatementSearchParamRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCanonicalRealm definition;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _CapabilityStatementOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCanonicalRealm definition;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _CapabilityStatementInteraction1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
}
@RealmModel()
class _CapabilityStatementMessagingRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CapabilityStatementEndpointRealm> endpoint;
  late _FhirUnsignedIntRealm reliableCache;
  late _PrimitiveElementRealm reliableCacheElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
  late List<_CapabilityStatementSupportedMessageRealm> supportedMessage;
}
@RealmModel()
class _CapabilityStatementEndpointRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodingRealm protocol;
  late _FhirUrlRealm address;
  late _PrimitiveElementRealm addressElement;
}
@RealmModel()
class _CapabilityStatementSupportedMessageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _FhirCanonicalRealm definition;
}
@RealmModel()
class _CapabilityStatementDocumentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _FhirMarkdownRealm documentation;
  late _PrimitiveElementRealm documentationElement;
  late _FhirCanonicalRealm profile;
}
