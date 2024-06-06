import 'package:objectbox/objectbox.dart';
@Entity()
class CommunicationDbObject {
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
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> inResponseTo = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> medium = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> topic = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> about = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> sent = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> sentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> received = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> receivedElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> recipient = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> sender = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<CommunicationPayloadDbObject> payload = ToMany<CommunicationPayloadDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  CommunicationDbObject({required this.id});
}
@Entity()
class CommunicationPayloadDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> contentString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> contentStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> contentAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> contentReference = ToOne<ReferenceDbObject>();
  CommunicationPayloadDbObject({required this.id});
}
