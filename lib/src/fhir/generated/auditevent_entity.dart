import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEventEntity {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference what;
  final Coding type;
  final Coding role;
  final Coding lifecycle;
  final List<Coding> securityLabel;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final FhirBase64Binary query;
  final PrimitiveElement Query;
  final List<AuditEventDetail> detail;
  const AuditEventEntity({
    this.id,
    this.extension,
    this.modifierExtension,
    this.what,
    this.type,
    this.role,
    this.lifecycle,
    this.securityLabel,
    this.name,
    this.Name,
    this.description,
    this.Description,
    this.query,
    this.Query,
    this.detail,
  });
}
