import 'package:realm/realm.dart';
@RealmModel()
class _DocumentReferenceRealm {
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
  late _IdentifierRealm masterIdentifier;
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm docStatus;
  late _PrimitiveElementRealm docStatusElement;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> category;
  late _ReferenceRealm subject;
  late _FhirInstantRealm date;
  late _PrimitiveElementRealm dateElement;
  late List<_ReferenceRealm> author;
  late _ReferenceRealm authenticator;
  late _ReferenceRealm custodian;
  late List<_DocumentReferenceRelatesToRealm> relatesTo;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_CodeableConceptRealm> securityLabel;
  late List<_DocumentReferenceContentRealm> content;
  late _DocumentReferenceContextRealm context;
}
@RealmModel()
class _DocumentReferenceRelatesToRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _ReferenceRealm target;
}
@RealmModel()
class _DocumentReferenceContentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _AttachmentRealm attachment;
  late _CodingRealm format;
}
@RealmModel()
class _DocumentReferenceContextRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ReferenceRealm> encounter;
  late List<_CodeableConceptRealm> event;
  late _PeriodRealm period;
  late _CodeableConceptRealm facilityType;
  late _CodeableConceptRealm practiceSetting;
  late _ReferenceRealm sourcePatientInfo;
  late List<_ReferenceRealm> related;
}
