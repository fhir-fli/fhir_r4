import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetFilter {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode property;
  final PrimitiveElement Property;
  final FhirCode op;
  final PrimitiveElement Op;
  final String value;
  final PrimitiveElement Value;
  const ValueSetFilter({
    this.id,
    this.extension,
    this.modifierExtension,
    this.property,
    this.Property,
    this.op,
    this.Op,
    this.value,
    this.Value,
  });
}
