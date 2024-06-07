import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class EvidenceReportDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext =
      ToMany<UsageContextDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<IdentifierDbObject> relatedIdentifier =
      ToMany<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> citeAsReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirMarkdownDbObject> citeAsMarkdown =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> citeAsMarkdownElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact =
      ToMany<RelatedArtifactDbObject>();
  final ToOne<EvidenceReportSubjectDbObject> subject =
      ToOne<EvidenceReportSubjectDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer =
      ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser =
      ToMany<ContactDetailDbObject>();
  final ToMany<EvidenceReportRelatesToDbObject> relatesTo =
      ToMany<EvidenceReportRelatesToDbObject>();
  final ToMany<EvidenceReportSectionDbObject> section =
      ToMany<EvidenceReportSectionDbObject>();
  EvidenceReportDbObject({required this.id});
}

@Entity()
class EvidenceReportSubjectDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<EvidenceReportCharacteristicDbObject> characteristic =
      ToMany<EvidenceReportCharacteristicDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  EvidenceReportSubjectDbObject({required this.id});
}

@Entity()
class EvidenceReportCharacteristicDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<FhirBooleanDbObject> exclude = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> excludeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  EvidenceReportCharacteristicDbObject({required this.id});
}

@Entity()
class EvidenceReportRelatesToDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> targetIdentifier =
      ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> targetReference = ToOne<ReferenceDbObject>();
  EvidenceReportRelatesToDbObject({required this.id});
}

@Entity()
class EvidenceReportSectionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> focus = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> focusReference = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> author = ToMany<ReferenceDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> orderedBy =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> entryClassifier =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> entryReference = ToMany<ReferenceDbObject>();
  final ToMany<QuantityDbObject> entryQuantity = ToMany<QuantityDbObject>();
  final ToOne<CodeableConceptDbObject> emptyReason =
      ToOne<CodeableConceptDbObject>();
  final ToMany<EvidenceReportSectionDbObject> section =
      ToMany<EvidenceReportSectionDbObject>();
  EvidenceReportSectionDbObject({required this.id});
}
