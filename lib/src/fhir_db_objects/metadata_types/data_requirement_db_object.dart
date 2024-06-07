import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';

@Entity()
class DataRequirementDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> profile = ToMany<FhirCanonicalDbObject>();
  final ToOne<CodeableConceptDbObject> subjectCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subjectReference = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> mustSupport = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> mustSupportElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<DataRequirementCodeFilterDbObject> codeFilter =
      ToMany<DataRequirementCodeFilterDbObject>();
  final ToMany<DataRequirementDateFilterDbObject> dateFilter =
      ToMany<DataRequirementDateFilterDbObject>();
  final ToOne<FhirPositiveIntDbObject> limit = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> limitElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<DataRequirementSortDbObject> sort =
      ToMany<DataRequirementSortDbObject>();
  DataRequirementDbObject({required this.id});
}

@Entity()
class DataRequirementCodeFilterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> searchParam = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> searchParamElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> valueSet = ToOne<FhirCanonicalDbObject>();
  final ToMany<CodingDbObject> code = ToMany<CodingDbObject>();
  DataRequirementCodeFilterDbObject({required this.id});
}

@Entity()
class DataRequirementDateFilterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> searchParam = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> searchParamElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> valuePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> valueDuration =
      ToOne<FhirDurationDbObject>();
  DataRequirementDateFilterDbObject({required this.id});
}

@Entity()
class DataRequirementSortDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> direction = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> directionElement =
      ToOne<PrimitiveElementDbObject>();
  DataRequirementSortDbObject({required this.id});
}
