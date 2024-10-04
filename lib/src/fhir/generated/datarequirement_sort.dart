import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DataRequirementSort {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final dynamic direction;
  final PrimitiveElement Direction;
  const DataRequirementSort({
    this.id,
    this.extension,
    this.modifierExtension,
    this.path,
    this.Path,
    this.direction,
    this.Direction,
  });
}
