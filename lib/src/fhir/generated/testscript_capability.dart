import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptCapability {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean required;
  final PrimitiveElement Required;
  final FhirBoolean validated;
  final PrimitiveElement Validated;
  final String description;
  final PrimitiveElement Description;
  final List<FhirInteger> origin;
  final List<PrimitiveElement> Origin;
  final FhirInteger destination;
  final PrimitiveElement Destination;
  final List<FhirUri> link;
  final List<PrimitiveElement> Link;
  final FhirCanonical capabilities;
  const TestScriptCapability({
    this.id,
    this.extension,
    this.modifierExtension,
    this.required,
    this.Required,
    this.validated,
    this.Validated,
    this.description,
    this.Description,
    this.origin,
    this.Origin,
    this.destination,
    this.Destination,
    this.link,
    this.Link,
    required this.capabilities,
  });
}
