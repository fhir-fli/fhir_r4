import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Duration {
  final String id;
  final List<Extension> extension;
  final FhirDecimal value;
  final PrimitiveElement Value;
  final dynamic comparator;
  final PrimitiveElement Comparator;
  final String unit;
  final PrimitiveElement Unit;
  final FhirUri system;
  final PrimitiveElement System;
  final FhirCode code;
  final PrimitiveElement Code;
  const Duration({
    this.id,
    this.extension,
    this.value,
    this.Value,
    this.comparator,
    this.Comparator,
    this.unit,
    this.Unit,
    this.system,
    this.System,
    this.code,
    this.Code,
  });
}
