import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceReportCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final Reference valueReference;
  final CodeableConcept valueCodeableConcept;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Quantity valueQuantity;
  final Range valueRange;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final Period period;
  const EvidenceReportCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.valueReference,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.exclude,
    this.Exclude,
    this.period,
  });
}
