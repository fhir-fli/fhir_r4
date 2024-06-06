import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class DosageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> sequence = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> sequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> additionalInstruction =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> patientInstruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> patientInstructionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<TimingDbObject> timing = ToOne<TimingDbObject>();
  final ToOne<FhirBooleanDbObject> asNeededBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> asNeededBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> asNeededCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> site = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> route = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  final ToMany<DosageDoseAndRateDbObject> doseAndRate =
      ToMany<DosageDoseAndRateDbObject>();
  final ToOne<RatioDbObject> maxDosePerPeriod = ToOne<RatioDbObject>();
  final ToOne<QuantityDbObject> maxDosePerAdministration =
      ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> maxDosePerLifetime = ToOne<QuantityDbObject>();
  DosageDbObject({required this.id});
}

@Entity()
class DosageDoseAndRateDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<RangeDbObject> doseRange = ToOne<RangeDbObject>();
  final ToOne<QuantityDbObject> doseQuantity = ToOne<QuantityDbObject>();
  final ToOne<RatioDbObject> rateRatio = ToOne<RatioDbObject>();
  final ToOne<RangeDbObject> rateRange = ToOne<RangeDbObject>();
  final ToOne<QuantityDbObject> rateQuantity = ToOne<QuantityDbObject>();
  DosageDoseAndRateDbObject({required this.id});
}
