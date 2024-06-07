import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ConditionDbObject {
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
  final ToOne<CodeableConceptDbObject> clinicalStatus =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> verificationStatus =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> severity =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> bodySite =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> onsetDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> onsetAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> onsetPeriod = ToOne<PeriodDbObject>();
  final ToOne<RangeDbObject> onsetRange = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> onsetString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> abatementDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> abatementDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> abatementAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> abatementPeriod = ToOne<PeriodDbObject>();
  final ToOne<RangeDbObject> abatementRange = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> abatementString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> abatementStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> recordedDate =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> recorder = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> asserter = ToOne<ReferenceDbObject>();
  final ToMany<ConditionStageDbObject> stage = ToMany<ConditionStageDbObject>();
  final ToMany<ConditionEvidenceDbObject> evidence =
      ToMany<ConditionEvidenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  ConditionDbObject({required this.id});
}

@Entity()
class ConditionStageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> summary =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> assessment = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  ConditionStageDbObject({required this.id});
}

@Entity()
class ConditionEvidenceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> code =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> detail = ToMany<ReferenceDbObject>();
  ConditionEvidenceDbObject({required this.id});
}
