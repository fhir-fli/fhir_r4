import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesTranslation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean needsMap;
  final PrimitiveElement NeedsMap;
  const TerminologyCapabilitiesTranslation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.needsMap,
    this.NeedsMap,
  });
}
