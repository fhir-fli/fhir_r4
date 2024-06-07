import 'package:realm/realm.dart';
@RealmModel()
class _EvidenceReportRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_UsageContextRealm> useContext;
  late List<_IdentifierRealm> identifier;
  late List<_IdentifierRealm> relatedIdentifier;
  late _ReferenceRealm citeAsReference;
  late _FhirMarkdownRealm citeAsMarkdown;
  late _PrimitiveElementRealm citeAsMarkdownElement;
  late _CodeableConceptRealm type;
  late List<_AnnotationRealm> note;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late _EvidenceReportSubjectRealm subject;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_EvidenceReportRelatesToRealm> relatesTo;
  late List<_EvidenceReportSectionRealm> section;
}
@RealmModel()
class _EvidenceReportSubjectRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_EvidenceReportCharacteristicRealm> characteristic;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _EvidenceReportCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _ReferenceRealm valueReference;
  late _CodeableConceptRealm valueCodeableConcept;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
  late _FhirBooleanRealm exclude;
  late _PrimitiveElementRealm excludeElement;
  late _PeriodRealm period;
}
@RealmModel()
class _EvidenceReportRelatesToRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm code;
  late _PrimitiveElementRealm codeElement;
  late _IdentifierRealm targetIdentifier;
  late _ReferenceRealm targetReference;
}
@RealmModel()
class _EvidenceReportSectionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _CodeableConceptRealm focus;
  late _ReferenceRealm focusReference;
  late List<_ReferenceRealm> author;
  late _NarrativeRealm text;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _CodeableConceptRealm orderedBy;
  late List<_CodeableConceptRealm> entryClassifier;
  late List<_ReferenceRealm> entryReference;
  late List<_QuantityRealm> entryQuantity;
  late _CodeableConceptRealm emptyReason;
  late List<_EvidenceReportSectionRealm> section;
}
