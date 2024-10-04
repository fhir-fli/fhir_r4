import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Identifier {
  final String id;
  final List<Extension> extension;
  final dynamic use;
  final PrimitiveElement Use;
  final CodeableConcept type;
  final FhirUri system;
  final PrimitiveElement System;
  final String value;
  final PrimitiveElement Value;
  final Period period;
  final Reference assigner;
  const Identifier({
    this.id,
    this.extension,
    this.use,
    this.Use,
    this.type,
    this.system,
    this.System,
    this.value,
    this.Value,
    this.period,
    this.assigner,
  });
}
