import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationAbstract {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement Text;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  const CitationAbstract({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.language,
    this.text,
    this.Text,
    this.copyright,
    this.Copyright,
  });
}
