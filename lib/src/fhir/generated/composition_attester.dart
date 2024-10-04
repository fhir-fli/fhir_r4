import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CompositionAttester {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirDateTime time;
  final PrimitiveElement Time;
  final Reference party;
  const CompositionAttester({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    this.time,
    this.Time,
    this.party,
  });
}
