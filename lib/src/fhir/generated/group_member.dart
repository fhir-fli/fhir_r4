import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GroupMember {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference entity;
  final Period period;
  final FhirBoolean inactive;
  final PrimitiveElement Inactive;
  const GroupMember({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.Inactive,
  });
}
