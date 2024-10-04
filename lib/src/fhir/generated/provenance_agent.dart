import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ProvenanceAgent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> role;
  final Reference who;
  final Reference onBehalfOf;
  const ProvenanceAgent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    required this.who,
    this.onBehalfOf,
  });
}
