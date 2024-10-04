import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractRule {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
  const ContractRule({
    this.id,
    this.extension,
    this.modifierExtension,
    this.contentAttachment,
    this.contentReference,
  });
}
