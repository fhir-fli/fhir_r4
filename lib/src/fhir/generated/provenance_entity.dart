import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ProvenanceEntity {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode role;
  final PrimitiveElement Role;
  final Reference what;
  final List<ProvenanceAgent> agent;
  const ProvenanceEntity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.Role,
    required this.what,
    this.agent,
  });
}
