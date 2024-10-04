import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptFixture {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean autocreate;
  final PrimitiveElement Autocreate;
  final FhirBoolean autodelete;
  final PrimitiveElement Autodelete;
  final Reference resource;
  const TestScriptFixture({
    this.id,
    this.extension,
    this.modifierExtension,
    this.autocreate,
    this.Autocreate,
    this.autodelete,
    this.Autodelete,
    this.resource,
  });
}
