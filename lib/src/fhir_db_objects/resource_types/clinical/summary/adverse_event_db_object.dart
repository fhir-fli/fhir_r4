import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class AdverseEventDbObject {
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
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> actuality = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> actualityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> event = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> detected = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> detectedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> recordedDate =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> resultingCondition =
      ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> seriousness =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> severity =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> outcome =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> recorder = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> contributor = ToMany<ReferenceDbObject>();
  final ToMany<AdverseEventSuspectEntityDbObject> suspectEntity =
      ToMany<AdverseEventSuspectEntityDbObject>();
  final ToMany<ReferenceDbObject> subjectMedicalHistory =
      ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> referenceDocument =
      ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> study = ToMany<ReferenceDbObject>();
  AdverseEventDbObject({required this.id});
}

@Entity()
class AdverseEventSuspectEntityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> instance = ToOne<ReferenceDbObject>();
  final ToMany<AdverseEventCausalityDbObject> causality =
      ToMany<AdverseEventCausalityDbObject>();
  AdverseEventSuspectEntityDbObject({required this.id});
}

@Entity()
class AdverseEventCausalityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> assessment =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> productRelatedness = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> productRelatednessElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  AdverseEventCausalityDbObject({required this.id});
}
