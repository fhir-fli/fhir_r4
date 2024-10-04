import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class IngredientManufacturer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode role;
  final PrimitiveElement Role;
  final Reference manufacturer;
  const IngredientManufacturer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.role,
    this.Role,
    required this.manufacturer,
  });
}
