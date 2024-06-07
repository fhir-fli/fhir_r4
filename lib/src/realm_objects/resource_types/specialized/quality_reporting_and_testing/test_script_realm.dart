import 'package:realm/realm.dart';
@RealmModel()
class _TestScriptRealm {
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
  late List<_TestScriptOriginRealm> origin;
  late List<_TestScriptDestinationRealm> destination;
  late _TestScriptMetadataRealm metadata;
  late List<_TestScriptFixtureRealm> fixture;
  late List<_ReferenceRealm> profile;
  late List<_TestScriptVariableRealm> variable;
  late _TestScriptSetupRealm setup;
  late List<_TestScriptTestRealm> test;
  late _TestScriptTeardownRealm teardown;
}
@RealmModel()
class _TestScriptOriginRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm index;
  late _PrimitiveElementRealm indexElement;
  late _CodingRealm profile;
}
@RealmModel()
class _TestScriptDestinationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm index;
  late _PrimitiveElementRealm indexElement;
  late _CodingRealm profile;
}
@RealmModel()
class _TestScriptMetadataRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_TestScriptLinkRealm> link;
  late List<_TestScriptCapabilityRealm> capability;
}
@RealmModel()
class _TestScriptLinkRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
}
@RealmModel()
class _TestScriptCapabilityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm required_;
  late _PrimitiveElementRealm requiredElement;
  late _FhirBooleanRealm validated;
  late _PrimitiveElementRealm validatedElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_FhirIntegerRealm> origin;
  late List<_PrimitiveElementRealm> originElement;
  late _FhirIntegerRealm destination;
  late _PrimitiveElementRealm destinationElement;
  late List<_FhirUriRealm> link;
  late List<_PrimitiveElementRealm> linkElement;
  late _FhirCanonicalRealm capabilities;
}
@RealmModel()
class _TestScriptFixtureRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm autocreate;
  late _PrimitiveElementRealm autocreateElement;
  late _FhirBooleanRealm autodelete;
  late _PrimitiveElementRealm autodeleteElement;
  late _ReferenceRealm resource;
}
@RealmModel()
class _TestScriptVariableRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String defaultValue;
  late _PrimitiveElementRealm defaultValueElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String expression;
  late _PrimitiveElementRealm expressionElement;
  late String headerField;
  late _PrimitiveElementRealm headerFieldElement;
  late String hint;
  late _PrimitiveElementRealm hintElement;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late _FhirIdRealm sourceId;
  late _PrimitiveElementRealm sourceIdElement;
}
@RealmModel()
class _TestScriptSetupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_TestScriptActionRealm> action;
}
@RealmModel()
class _TestScriptActionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestScriptOperationRealm operation;
  late _TestScriptAssertRealm assert_;
}
@RealmModel()
class _TestScriptOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodingRealm type;
  late _FhirCodeRealm resource;
  late _PrimitiveElementRealm resourceElement;
  late String label;
  late _PrimitiveElementRealm labelElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirCodeRealm accept;
  late _PrimitiveElementRealm acceptElement;
  late _FhirCodeRealm contentType;
  late _PrimitiveElementRealm contentTypeElement;
  late _FhirIntegerRealm destination;
  late _PrimitiveElementRealm destinationElement;
  late _FhirBooleanRealm encodeRequestUrl;
  late _PrimitiveElementRealm encodeRequestUrlElement;
  late _FhirCodeRealm method;
  late _PrimitiveElementRealm methodElement;
  late _FhirIntegerRealm origin;
  late _PrimitiveElementRealm originElement;
  late String params;
  late _PrimitiveElementRealm paramsElement;
  late List<_TestScriptRequestHeaderRealm> requestHeader;
  late _FhirIdRealm requestId;
  late _PrimitiveElementRealm requestIdElement;
  late _FhirIdRealm responseId;
  late _PrimitiveElementRealm responseIdElement;
  late _FhirIdRealm sourceId;
  late _PrimitiveElementRealm sourceIdElement;
  late _FhirIdRealm targetId;
  late _PrimitiveElementRealm targetIdElement;
  late String url;
  late _PrimitiveElementRealm urlElement;
}
@RealmModel()
class _TestScriptRequestHeaderRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String field;
  late _PrimitiveElementRealm fieldElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _TestScriptAssertRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String label;
  late _PrimitiveElementRealm labelElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirCodeRealm direction;
  late _PrimitiveElementRealm directionElement;
  late String compareToSourceId;
  late _PrimitiveElementRealm compareToSourceIdElement;
  late String compareToSourceExpression;
  late _PrimitiveElementRealm compareToSourceExpressionElement;
  late String compareToSourcePath;
  late _PrimitiveElementRealm compareToSourcePathElement;
  late _FhirCodeRealm contentType;
  late _PrimitiveElementRealm contentTypeElement;
  late String expression;
  late _PrimitiveElementRealm expressionElement;
  late String headerField;
  late _PrimitiveElementRealm headerFieldElement;
  late String minimumId;
  late _PrimitiveElementRealm minimumIdElement;
  late _FhirBooleanRealm navigationLinks;
  late _PrimitiveElementRealm navigationLinksElement;
  late _FhirCodeRealm operator_;
  late _PrimitiveElementRealm operatorElement;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late _FhirCodeRealm requestMethod;
  late _PrimitiveElementRealm requestMethodElement;
  late String requestURL;
  late _PrimitiveElementRealm requestURLElement;
  late _FhirCodeRealm resource;
  late _PrimitiveElementRealm resourceElement;
  late _FhirCodeRealm response;
  late _PrimitiveElementRealm responseElement;
  late String responseCode;
  late _PrimitiveElementRealm responseCodeElement;
  late _FhirIdRealm sourceId;
  late _PrimitiveElementRealm sourceIdElement;
  late _FhirIdRealm validateProfileId;
  late _PrimitiveElementRealm validateProfileIdElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _FhirBooleanRealm warningOnly;
  late _PrimitiveElementRealm warningOnlyElement;
}
@RealmModel()
class _TestScriptTestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_TestScriptAction1Realm> action;
}
@RealmModel()
class _TestScriptAction1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestScriptOperationRealm operation;
  late _TestScriptAssertRealm assert_;
}
@RealmModel()
class _TestScriptTeardownRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_TestScriptAction2Realm> action;
}
@RealmModel()
class _TestScriptAction2Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestScriptOperationRealm operation;
}
