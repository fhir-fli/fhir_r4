import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class DiagnosticReportDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirInstantDbObject> issued = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> performer = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> resultsInterpreter =
      ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> specimen = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> result = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> imagingStudy = ToMany<ReferenceDbObject>();
  final ToMany<DiagnosticReportMediaDbObject> media =
      ToMany<DiagnosticReportMediaDbObject>();
  final ToOne<StringDbObject> conclusion = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> conclusionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> conclusionCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<AttachmentDbObject> presentedForm = ToMany<AttachmentDbObject>();
  DiagnosticReportDbObject({required this.id});
}

@Entity()
class DiagnosticReportMediaDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> link = ToOne<ReferenceDbObject>();
  DiagnosticReportMediaDbObject({required this.id});
}
