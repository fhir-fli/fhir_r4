import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptVariable {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String defaultValue;
  final PrimitiveElement DefaultValue;
  final String description;
  final PrimitiveElement Description;
  final String expression;
  final PrimitiveElement Expression;
  final String headerField;
  final PrimitiveElement HeaderField;
  final String hint;
  final PrimitiveElement Hint;
  final String path;
  final PrimitiveElement Path;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
  const TestScriptVariable({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.defaultValue,
    this.DefaultValue,
    this.description,
    this.Description,
    this.expression,
    this.Expression,
    this.headerField,
    this.HeaderField,
    this.hint,
    this.Hint,
    this.path,
    this.Path,
    this.sourceId,
    this.SourceId,
  });
}
