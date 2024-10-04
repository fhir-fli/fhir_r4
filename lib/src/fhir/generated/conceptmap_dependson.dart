import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConceptMapDependsOn {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri property;
  final PrimitiveElement Property;
  final FhirCanonical system;
  final String value;
  final PrimitiveElement Value;
  final String display;
  final PrimitiveElement Display;
  const ConceptMapDependsOn({
    this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.Property,
    this.system,
    this.value,
    this.Value,
    this.display,
    this.Display,
  });
}
