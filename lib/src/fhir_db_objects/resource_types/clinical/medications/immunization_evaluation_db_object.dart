import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ImmunizationEvaluationDbObject {
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
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> authority = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> targetDisease =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> immunizationEvent = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> doseStatus =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> doseStatusReason =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> series = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> doseNumberPositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberPositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> doseNumberString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> doseNumberStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> seriesDosesPositiveInt =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesPositiveIntElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> seriesDosesString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seriesDosesStringElement =
      ToOne<PrimitiveElementDbObject>();
  ImmunizationEvaluationDbObject({required this.id});
}
