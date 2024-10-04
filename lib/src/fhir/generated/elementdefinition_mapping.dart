import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ElementDefinitionMapping {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirId identity;
  final PrimitiveElement Identity;
  final FhirCode language;
  final PrimitiveElement Language;
  final String map;
  final PrimitiveElement Map;
  final String comment;
  final PrimitiveElement Comment;
  const ElementDefinitionMapping({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identity,
    this.Identity,
    this.language,
    this.Language,
    this.map,
    this.Map,
    this.comment,
    this.Comment,
  });
}
