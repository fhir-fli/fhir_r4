import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationVersion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String value;
  final PrimitiveElement Value;
  final Reference baseCitation;
  const CitationVersion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.value,
    this.Value,
    this.baseCitation,
  });
}
