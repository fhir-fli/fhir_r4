import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptRequestHeader {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String field;
  final PrimitiveElement Field;
  final String value;
  final PrimitiveElement Value;
  const TestScriptRequestHeader({
    this.id,
    this.extension,
    this.modifierExtension,
    this.field,
    this.Field,
    this.value,
    this.Value,
  });
}
