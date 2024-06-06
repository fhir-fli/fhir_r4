import 'package:objectbox/objectbox.dart';
@Entity()
class DetectedIssueDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> severity = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> severityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> identifiedDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> identifiedDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> identifiedPeriod = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> implicated = ToMany<ReferenceDbObject>();
  final ToMany<DetectedIssueEvidenceDbObject> evidence = ToMany<DetectedIssueEvidenceDbObject>();
  final ToOne<StringDbObject> detail = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> detailElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> reference = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> referenceElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<DetectedIssueMitigationDbObject> mitigation = ToMany<DetectedIssueMitigationDbObject>();
  DetectedIssueDbObject({required this.id});
}
@Entity()
class DetectedIssueEvidenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> detail = ToMany<ReferenceDbObject>();
  DetectedIssueEvidenceDbObject({required this.id});
}
@Entity()
class DetectedIssueMitigationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> action = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  DetectedIssueMitigationDbObject({required this.id});
}
