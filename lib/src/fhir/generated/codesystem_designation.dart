import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystemDesignation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode language;
  final PrimitiveElement Language;
  final Coding use;
  final String value;
  final PrimitiveElement Value;
  const CodeSystemDesignation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.language,
    this.Language,
    this.use,
    this.value,
    this.Value,
  });
}
