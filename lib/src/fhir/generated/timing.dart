import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Timing {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirDateTime> event;
  final List<PrimitiveElement> Event;
  final Timing_Repeat repeat;
  final CodeableConcept code;
  const Timing({
    this.id,
    this.extension,
    this.modifierExtension,
    this.event,
    this.Event,
    this.repeat,
    this.code,
  });
}
