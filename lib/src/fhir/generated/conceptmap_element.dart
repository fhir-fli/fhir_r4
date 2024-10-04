import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConceptMapElement {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final List<ConceptMapTarget> target;
  const ConceptMapElement({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.display,
    this.Display,
    this.target,
  });
}
