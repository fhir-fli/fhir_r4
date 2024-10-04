import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TaskRestriction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt repetitions;
  final PrimitiveElement Repetitions;
  final Period period;
  final List<Reference> recipient;
  const TaskRestriction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.repetitions,
    this.Repetitions,
    this.period,
    this.recipient,
  });
}
