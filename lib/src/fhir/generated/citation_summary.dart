import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationSummary {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept style;
  final FhirMarkdown text;
  final PrimitiveElement Text;
  const CitationSummary({
    this.id,
    this.extension,
    this.modifierExtension,
    this.style,
    this.text,
    this.Text,
  });
}
