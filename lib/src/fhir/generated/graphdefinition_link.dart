import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GraphDefinitionLink {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String sliceName;
  final PrimitiveElement SliceName;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String description;
  final PrimitiveElement Description;
  final List<GraphDefinitionTarget> target;
  const GraphDefinitionLink({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.sliceName,
    this.SliceName,
    this.min,
    this.Min,
    this.max,
    this.Max,
    this.description,
    this.Description,
    this.target,
  });
}
