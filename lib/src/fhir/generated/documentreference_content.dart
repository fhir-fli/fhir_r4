import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentReferenceContent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Attachment attachment;
  final Coding format;
  const DocumentReferenceContent({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.attachment,
    this.format,
  });
}
