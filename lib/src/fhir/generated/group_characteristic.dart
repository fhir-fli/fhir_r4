import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GroupCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  final FhirBoolean exclude;
  final PrimitiveElement Exclude;
  final Period period;
  const GroupCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    this.exclude,
    this.Exclude,
    this.period,
  });
}
