import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionBase {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final FhirUnsignedInt min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  const ElementDefinitionBase({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.min,
    this.Min,
    this.max,
    this.Max,
  });
}
