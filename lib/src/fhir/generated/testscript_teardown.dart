import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptTeardown {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<TestScriptAction2> action;
  const TestScriptTeardown({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.action,
  });
}
