import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptMetadata {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<TestScriptLink> link;
  final List<TestScriptCapability> capability;
  const TestScriptMetadata({
    this.id,
    this.extension,
    this.modifierExtension,
    this.link,
    required this.capability,
  });
}
