import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenDefinitionHandling {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept temperatureQualifier;
  final Range temperatureRange;
  final FhirDuration maxDuration;
  final String instruction;
  final PrimitiveElement Instruction;
  const SpecimenDefinitionHandling({
    this.id,
    this.extension,
    this.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.Instruction,
  });
}
