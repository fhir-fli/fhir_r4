import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystemProperty1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final Coding valueCoding;
  final String valueString;
  final PrimitiveElement ValueString;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  const CodeSystemProperty1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.valueCode,
    this.ValueCode,
    this.valueCoding,
    this.valueString,
    this.ValueString,
    this.valueInteger,
    this.ValueInteger,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueDateTime,
    this.ValueDateTime,
    this.valueDecimal,
    this.ValueDecimal,
  });
}
