import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureDefinitionMapping {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId identity;
  final PrimitiveElement Identity;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String name;
  final PrimitiveElement Name;
  final String comment;
  final PrimitiveElement Comment;
  const StructureDefinitionMapping({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.Identity,
    this.uri,
    this.Uri,
    this.name,
    this.Name,
    this.comment,
    this.Comment,
  });
}
