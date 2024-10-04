import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Dosage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const Dosage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.Sequence,
    this.text,
    this.Text,
    this.additionalInstruction,
    this.patientInstruction,
    this.PatientInstruction,
    this.timing,
    this.asNeededBoolean,
    this.AsNeededBoolean,
    this.asNeededCodeableConcept,
    this.site,
    this.route,
    this.method,
    this.doseAndRate,
    this.maxDosePerPeriod,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
  });
}
