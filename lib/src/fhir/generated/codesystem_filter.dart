import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystemFilter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String description;
  final PrimitiveElement Description;
  final List<FhirCode> operator;
  final List<PrimitiveElement> Operator;
  final String value;
  final PrimitiveElement Value;
  const CodeSystemFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.description,
    this.Description,
    this.operator,
    this.Operator,
    this.value,
    this.Value,
  });
}
