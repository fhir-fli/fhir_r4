import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationDefinitionReferencedFrom {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String source;
  final PrimitiveElement Source;
  final String sourceId;
  final PrimitiveElement SourceId;
  const OperationDefinitionReferencedFrom({
    this.id,
    this.extension,
    this.modifierExtension,
    this.source,
    this.Source,
    this.sourceId,
    this.SourceId,
  });
}
