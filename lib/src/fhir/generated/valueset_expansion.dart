import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ValueSetExpansion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri identifier;
  final PrimitiveElement Identifier;
  final FhirDateTime timestamp;
  final PrimitiveElement Timestamp;
  final FhirInteger total;
  final PrimitiveElement Total;
  final FhirInteger offset;
  final PrimitiveElement Offset;
  final List<ValueSetParameter> parameter;
  final List<ValueSetContains> contains;
  const ValueSetExpansion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.Identifier,
    this.timestamp,
    this.Timestamp,
    this.total,
    this.Total,
    this.offset,
    this.Offset,
    this.parameter,
    this.contains,
  });
}
