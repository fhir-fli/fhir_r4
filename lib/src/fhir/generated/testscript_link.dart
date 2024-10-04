import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptLink {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String description;
  final PrimitiveElement Description;
  const TestScriptLink({
    this.id,
    this.extension,
    this.modifierExtension,
    this.url,
    this.Url,
    this.description,
    this.Description,
  });
}
