import 'package:realm/realm.dart';
@RealmModel()
class _CodeSystemRealm {
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
  late _FhirBooleanRealm caseSensitive;
  late _PrimitiveElementRealm caseSensitiveElement;
  late _FhirCanonicalRealm valueSet;
  late _FhirCodeRealm hierarchyMeaning;
  late _PrimitiveElementRealm hierarchyMeaningElement;
  late _FhirBooleanRealm compositional;
  late _PrimitiveElementRealm compositionalElement;
  late _FhirBooleanRealm versionNeeded;
  late _PrimitiveElementRealm versionNeededElement;
  late _FhirCodeRealm content;
  late _PrimitiveElementRealm contentElement;
  late _FhirCanonicalRealm supplements;
  late _FhirUnsignedIntRealm count;
  late _PrimitiveElementRealm countElement;
  late List<_CodeSystemFilterRealm> filter;
  late List<_CodeSystemPropertyRealm> property;
  late List<_CodeSystemConceptRealm> concept;
}
@RealmModel()
class _CodeSystemFilterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_FhirCodeRealm> operator_;
  late List<_PrimitiveElementRealm> operatorElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _CodeSystemPropertyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirUriRealm uri;
  late _PrimitiveElementRealm uriElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
}
@RealmModel()
class _CodeSystemConceptRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late String definition;
  late _PrimitiveElementRealm definitionElement;
  late List<_CodeSystemDesignationRealm> designation;
  late List<_CodeSystemProperty1Realm> property;
  late List<_CodeSystemConceptRealm> concept;
}
@RealmModel()
class _CodeSystemDesignationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _CodingRealm use;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _CodeSystemProperty1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _FhirCodeRealm valueCode;
  late _PrimitiveElementRealm valueCodeElement;
  late _CodingRealm valueCoding;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late String valueDateTime;
  late _PrimitiveElementRealm valueDateTimeElement;
  late _FhirDecimalRealm valueDecimal;
  late _PrimitiveElementRealm valueDecimalElement;
}
