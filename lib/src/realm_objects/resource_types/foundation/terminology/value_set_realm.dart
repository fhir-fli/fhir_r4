import 'package:realm/realm.dart';
@RealmModel()
class _ValueSetRealm {
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
  late _FhirBooleanRealm immutable;
  late _PrimitiveElementRealm immutableElement;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _ValueSetComposeRealm compose;
  late _ValueSetExpansionRealm expansion;
}
@RealmModel()
class _ValueSetComposeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDateRealm lockedDate;
  late _PrimitiveElementRealm lockedDateElement;
  late _FhirBooleanRealm inactive;
  late _PrimitiveElementRealm inactiveElement;
  late List<_ValueSetIncludeRealm> include;
  late List<_ValueSetIncludeRealm> exclude;
}
@RealmModel()
class _ValueSetIncludeRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm system;
  late _PrimitiveElementRealm systemElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late List<_ValueSetConceptRealm> concept;
  late List<_ValueSetFilterRealm> filter;
  late List<_FhirCanonicalRealm> valueSet;
}
@RealmModel()
class _ValueSetConceptRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late List<_ValueSetDesignationRealm> designation;
}
@RealmModel()
class _ValueSetDesignationRealm {
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
class _ValueSetFilterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm property;
  late _PrimitiveElementRealm propertyElement;
  late _FhirCodeRealm op;
  late _PrimitiveElementRealm opElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
@RealmModel()
class _ValueSetExpansionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm identifier;
  late _PrimitiveElementRealm identifierElement;
  late String timestamp;
  late _PrimitiveElementRealm timestampElement;
  late _FhirIntegerRealm total;
  late _PrimitiveElementRealm totalElement;
  late _FhirIntegerRealm offset;
  late _PrimitiveElementRealm offsetElement;
  late List<_ValueSetParameterRealm> parameter;
  late List<_ValueSetContainsRealm> contains;
}
@RealmModel()
class _ValueSetParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirDecimalRealm valueDecimal;
  late _PrimitiveElementRealm valueDecimalElement;
  late _FhirUriRealm valueUri;
  late _PrimitiveElementRealm valueUriElement;
  late _FhirCodeRealm valueCode;
  late _PrimitiveElementRealm valueCodeElement;
  late String valueDateTime;
  late _PrimitiveElementRealm valueDateTimeElement;
}
@RealmModel()
class _ValueSetContainsRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm system;
  late _PrimitiveElementRealm systemElement;
  late _FhirBooleanRealm abstract_;
  late _PrimitiveElementRealm abstractElement;
  late _FhirBooleanRealm inactive;
  late _PrimitiveElementRealm inactiveElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
  late List<_ValueSetDesignationRealm> designation;
  late List<_ValueSetContainsRealm> contains;
}
