import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Signature {
  final String id;
  final List<Extension> extension;
  final List<Coding> type;
  final FhirInstant when;
  final PrimitiveElement When;
  final Reference who;
  final Reference onBehalfOf;
  final FhirCode targetFormat;
  final PrimitiveElement TargetFormat;
  final FhirCode sigFormat;
  final PrimitiveElement SigFormat;
  final FhirBase64Binary data;
  final PrimitiveElement Data;
  const Signature({
    this.id,
    this.extension,
    required this.type,
    this.when,
    this.When,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.TargetFormat,
    this.sigFormat,
    this.SigFormat,
    this.data,
    this.Data,
  });
}
