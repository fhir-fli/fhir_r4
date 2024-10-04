import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DocumentReferenceRelatesTo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final Reference target;
  const DocumentReferenceRelatesTo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    required this.target,
  });
}
