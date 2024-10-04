import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentManifestRelated {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final Reference ref;
  const DocumentManifestRelated({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.ref,
  });
}
