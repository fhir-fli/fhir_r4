import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetParameter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final String valueCode;
  final PrimitiveElement ValueCode;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  const ValueSetParameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.valueString,
    this.ValueString,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueInteger,
    this.ValueInteger,
    this.valueDecimal,
    this.ValueDecimal,
    this.valueUri,
    this.ValueUri,
    this.valueCode,
    this.ValueCode,
    this.valueDateTime,
    this.ValueDateTime,
  });
}
