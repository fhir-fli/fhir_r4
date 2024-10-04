import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContactPoint {
  final String id;
  final List<Extension> extension;
  final dynamic system;
  final PrimitiveElement System;
  final String value;
  final PrimitiveElement Value;
  final dynamic use;
  final PrimitiveElement Use;
  final FhirPositiveInt rank;
  final PrimitiveElement Rank;
  final Period period;
  const ContactPoint({
    this.id,
    this.extension,
    this.system,
    this.System,
    this.value,
    this.Value,
    this.use,
    this.Use,
    this.rank,
    this.Rank,
    this.period,
  });
}
