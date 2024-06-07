import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ImagingStudyDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodingDbObject> modality = ToMany<CodingDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> started = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> startedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> referrer = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> interpreter = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfSeries =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfSeriesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfInstances =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfInstancesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> procedureReference =
      ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> procedureCode =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ImagingStudySeriesDbObject> series =
      ToMany<ImagingStudySeriesDbObject>();
  ImagingStudyDbObject({required this.id});
}

@Entity()
class ImagingStudySeriesDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> uid = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> uidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> number =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> modality = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> numberOfInstances =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberOfInstancesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  final ToOne<CodingDbObject> bodySite = ToOne<CodingDbObject>();
  final ToOne<CodingDbObject> laterality = ToOne<CodingDbObject>();
  final ToMany<ReferenceDbObject> specimen = ToMany<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> started = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> startedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ImagingStudyPerformerDbObject> performer =
      ToMany<ImagingStudyPerformerDbObject>();
  final ToMany<ImagingStudyInstanceDbObject> instance =
      ToMany<ImagingStudyInstanceDbObject>();
  ImagingStudySeriesDbObject({required this.id});
}

@Entity()
class ImagingStudyPerformerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> function =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  ImagingStudyPerformerDbObject({required this.id});
}

@Entity()
class ImagingStudyInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> uid = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> uidElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> sopClass = ToOne<CodingDbObject>();
  final ToOne<FhirUnsignedIntDbObject> number =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> numberElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  ImagingStudyInstanceDbObject({required this.id});
}
