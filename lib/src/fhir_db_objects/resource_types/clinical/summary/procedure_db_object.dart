import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ProcedureDbObject {
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
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical =
      ToMany<FhirCanonicalDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> statusReason =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> performedDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> performedDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> performedPeriod = ToOne<PeriodDbObject>();
  final ToOne<StringDbObject> performedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> performedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> performedAge = ToOne<AgeDbObject>();
  final ToOne<RangeDbObject> performedRange = ToOne<RangeDbObject>();
  final ToOne<ReferenceDbObject> recorder = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> asserter = ToOne<ReferenceDbObject>();
  final ToMany<ProcedurePerformerDbObject> performer =
      ToMany<ProcedurePerformerDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> bodySite =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> outcome =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> report = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> complication =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> complicationDetail =
      ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> followUp =
      ToMany<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ProcedureFocalDeviceDbObject> focalDevice =
      ToMany<ProcedureFocalDeviceDbObject>();
  final ToMany<ReferenceDbObject> usedReference = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> usedCode =
      ToMany<CodeableConceptDbObject>();
  ProcedureDbObject({required this.id});
}

@Entity()
class ProcedurePerformerDbObject {
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
  final ToOne<ReferenceDbObject> onBehalfOf = ToOne<ReferenceDbObject>();
  ProcedurePerformerDbObject({required this.id});
}

@Entity()
class ProcedureFocalDeviceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> action =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> manipulated = ToOne<ReferenceDbObject>();
  ProcedureFocalDeviceDbObject({required this.id});
}
