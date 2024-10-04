import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CommunicationPayload {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String contentString;
  final PrimitiveElement ContentString;
  final Attachment contentAttachment;
  final Reference contentReference;
  const CommunicationPayload({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentString,
    this.ContentString,
    this.contentAttachment,
    this.contentReference,
  });
}
