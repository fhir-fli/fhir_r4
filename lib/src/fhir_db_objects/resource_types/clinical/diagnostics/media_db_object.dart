import 'package:objectbox/objectbox.dart';
@Entity()
class MediaDbObject {
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
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> modality = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> view = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> createdDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> createdPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirInstantDbObject> issued = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> operator_ = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> deviceName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> deviceNameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> device = ToOne<ReferenceDbObject>();
  final ToOne<FhirPositiveIntDbObject> height = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> heightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> width = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> widthElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> frames = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> framesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> duration = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> durationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> content = ToOne<AttachmentDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  MediaDbObject({required this.id});
}
