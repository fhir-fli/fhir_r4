import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ProcedureFocalDevice {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept action;
  final Reference manipulated;
  const ProcedureFocalDevice({
    this.id,
    this.extension,
    this.modifierExtension,
    this.action,
    required this.manipulated,
  });
}
