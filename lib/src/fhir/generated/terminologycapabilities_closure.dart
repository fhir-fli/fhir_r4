import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesClosure {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean translation;
  final PrimitiveElement Translation;
  const TerminologyCapabilitiesClosure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.translation,
    this.Translation,
  });
}
