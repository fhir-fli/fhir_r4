import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationTitle {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement Text;
  const CitationTitle({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.language,
    this.text,
    this.Text,
  });
}
