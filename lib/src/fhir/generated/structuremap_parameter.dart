import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class StructureMapParameter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String valueId;
  final PrimitiveElement ValueId;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  const StructureMapParameter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueId,
    this.ValueId,
    this.valueString,
    this.ValueString,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueInteger,
    this.ValueInteger,
    this.valueDecimal,
    this.ValueDecimal,
  });
}
