import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptTest {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final List<TestScriptAction1> action;
  const TestScriptTest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.description,
    this.Description,
    required this.action,
  });
}
