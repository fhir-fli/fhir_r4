import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConceptMapUnmapped {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirCanonical url;
  const ConceptMapUnmapped({
    this.id,
    this.extension,
    this.modifierExtension,
    this.mode,
    this.Mode,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.url,
  });
}
