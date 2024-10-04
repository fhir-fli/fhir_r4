import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Dosage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirInteger sequence;
  final PrimitiveElement Sequence;
  final String text;
  final PrimitiveElement Text;
  final List<CodeableConcept> additionalInstruction;
  final String patientInstruction;
  final PrimitiveElement PatientInstruction;
  final Timing timing;
  final bool asNeededBoolean;
  final PrimitiveElement AsNeededBoolean;
  final CodeableConcept asNeededCodeableConcept;
  final CodeableConcept site;
  final CodeableConcept route;
  final CodeableConcept method;
  final List<DosageDoseAndRate> doseAndRate;
  final Ratio maxDosePerPeriod;
  final Quantity maxDosePerAdministration;
  final Quantity maxDosePerLifetime;
}

@Data()
@JsonCodable()
class DosageDoseAndRate {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Range doseRange;
  final Quantity doseQuantity;
  final Ratio rateRatio;
  final Range rateRange;
  final Quantity rateQuantity;
}


