import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Signature extends DataType {
  Signature({
    super.id,
    super.extension_,
    required this.type,
    required this.when,
    this.whenElement,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.targetFormatElement,
    this.sigFormat,
    this.sigFormatElement,
    this.data,
    this.dataElement,
  });

  final List<Coding> type;
  final FhirInstant when;
  final Element? whenElement;
  final Reference who;
  final Reference? onBehalfOf;
  final FhirCode? targetFormat;
  final Element? targetFormatElement;
  final FhirCode? sigFormat;
  final Element? sigFormatElement;
  final FhirBase64Binary? data;
  final Element? dataElement;
  @override
  Signature clone() => throw UnimplementedError();
}
