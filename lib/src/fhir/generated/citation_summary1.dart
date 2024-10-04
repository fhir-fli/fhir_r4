import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationSummary1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept style;
  final CodeableConcept source;
  final FhirMarkdown value;
  final PrimitiveElement Value;
  const CitationSummary1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.style,
    this.source,
    this.value,
    this.Value,
  });
}
