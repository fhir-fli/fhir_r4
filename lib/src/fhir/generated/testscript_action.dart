import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptAction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final TestScript_Operation operation;
  final TestScript_Assert assert;
  const TestScriptAction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.assert,
  });
}
