import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationWebLocation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final FhirUri url;
  final PrimitiveElement Url;
  const CitationWebLocation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.url,
    this.Url,
  });
}
