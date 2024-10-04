import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionDiscriminator {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final dynamic type;
  final PrimitiveElement Type;
  final String path;
  final PrimitiveElement Path;
  const ElementDefinitionDiscriminator({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.path,
    this.Path,
  });
}
