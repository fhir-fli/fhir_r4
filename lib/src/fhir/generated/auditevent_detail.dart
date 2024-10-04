import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEventDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String type;
  final PrimitiveElement Type;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
  const AuditEventDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.valueString,
    this.ValueString,
    this.valueBase64Binary,
    this.ValueBase64Binary,
  });
}
