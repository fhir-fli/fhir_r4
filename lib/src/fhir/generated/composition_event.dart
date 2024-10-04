import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CompositionEvent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> code;
  final Period period;
  final List<Reference> detail;
  const CompositionEvent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });
}
