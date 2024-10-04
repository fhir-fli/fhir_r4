import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PractitionerRoleNotAvailable {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final Period during;
  const PractitionerRoleNotAvailable({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.during,
  });
}
