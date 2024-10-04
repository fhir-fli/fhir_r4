import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesImplementation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final FhirUrl url;
  final PrimitiveElement Url;
  const TerminologyCapabilitiesImplementation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.url,
    this.Url,
  });
}
