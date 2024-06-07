import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class CommunicationRequestDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> replaces = ToMany<ReferenceDbObject>();
  final ToOne<IdentifierDbObject> groupIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> medium =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> about = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToMany<CommunicationRequestPayloadDbObject> payload =
      ToMany<CommunicationRequestPayloadDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> authoredOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> authoredOnElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> requester = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> recipient = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> sender = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  CommunicationRequestDbObject({required this.id});
}

@Entity()
class CommunicationRequestPayloadDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> contentString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> contentStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> contentAttachment =
      ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> contentReference = ToOne<ReferenceDbObject>();
  CommunicationRequestPayloadDbObject({required this.id});
}
