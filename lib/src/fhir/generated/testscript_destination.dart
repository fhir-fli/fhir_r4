import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptDestination {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirInteger index;
  final PrimitiveElement Index;
  final Coding profile;
  const TestScriptDestination({
    this.id,
    this.extension,
    this.modifierExtension,
    this.index,
    this.Index,
    required this.profile,
  });
}
