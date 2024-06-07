import 'package:objectbox/objectbox.dart';
import '../fhir_db_objects.dart';

@Entity()
class TimingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirDateTimeDbObject> event = ToMany<FhirDateTimeDbObject>();
  final ToMany<PrimitiveElementDbObject> eventElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<TimingRepeatDbObject> repeat = ToOne<TimingRepeatDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  TimingDbObject({required this.id});
}

@Entity()
class TimingRepeatDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDurationDbObject> boundsDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<RangeDbObject> boundsRange = ToOne<RangeDbObject>();
  final ToOne<PeriodDbObject> boundsPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirPositiveIntDbObject> count = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> countElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> countMax =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> countMaxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> duration = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> durationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> durationMax = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> durationMaxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> durationUnit = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> durationUnitElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> frequency =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> frequencyElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> frequencyMax =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> frequencyMaxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> period = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> periodElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> periodMax = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> periodMaxElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> periodUnit = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> periodUnitElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> dayOfWeek = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> dayOfWeekElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirTimeDbObject> timeOfDay = ToMany<FhirTimeDbObject>();
  final ToMany<PrimitiveElementDbObject> timeOfDayElement =
      ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> when = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> whenElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> offset =
      ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> offsetElement =
      ToOne<PrimitiveElementDbObject>();
  TimingRepeatDbObject({required this.id});
}
