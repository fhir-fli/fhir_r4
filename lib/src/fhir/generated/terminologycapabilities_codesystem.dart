import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesCodeSystem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCanonical uri;
  final List<TerminologyCapabilitiesVersion> version;
  final FhirBoolean subsumption;
  final PrimitiveElement Subsumption;
  const TerminologyCapabilitiesCodeSystem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    this.Subsumption,
  });
}
