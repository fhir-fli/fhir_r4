import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuidePage1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final List<String> anchor;
  final List<PrimitiveElement> Anchor;
  const ImplementationGuidePage1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.title,
    this.Title,
    this.anchor,
    this.Anchor,
  });
}
