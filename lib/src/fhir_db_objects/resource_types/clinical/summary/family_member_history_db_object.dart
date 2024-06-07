import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FamilyMemberHistoryDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> dataAbsentReason =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> relationship =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> sex = ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> bornPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateDbObject> bornDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> bornDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> bornString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> bornStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> ageAge = ToOne<AgeDbObject>();
  final ToOne<RangeDbObject> ageRange = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> ageString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> ageStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> estimatedAge = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> estimatedAgeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> deceasedBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> deceasedBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> deceasedAge = ToOne<AgeDbObject>();
  final ToOne<RangeDbObject> deceasedRange = ToOne<RangeDbObject>();
  final ToOne<FhirDateDbObject> deceasedDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> deceasedDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> deceasedString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> deceasedStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<FamilyMemberHistoryConditionDbObject> condition =
      ToMany<FamilyMemberHistoryConditionDbObject>();
  FamilyMemberHistoryDbObject({required this.id});
}

@Entity()
class FamilyMemberHistoryConditionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> outcome =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> contributedToDeath =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> contributedToDeathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> onsetAge = ToOne<AgeDbObject>();
  final ToOne<RangeDbObject> onsetRange = ToOne<RangeDbObject>();
  final ToOne<PeriodDbObject> onsetPeriod = ToOne<PeriodDbObject>();
  final ToOne<StringDbObject> onsetString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> onsetStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  FamilyMemberHistoryConditionDbObject({required this.id});
}
