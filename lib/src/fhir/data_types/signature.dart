import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Signature extends DataType {
  final List<Coding> type;
  final FhirInstant? when;
  final Element? whenElement;
  final Reference who;
  final Reference? onBehalfOf;
  final FhirCode? targetFormat;
  final Element? targetFormatElement;
  final FhirCode? sigFormat;
  final Element? sigFormatElement;
  final FhirBase64Binary? data;
  final Element? dataElement;

  Signature({
    super.id,
    super.extension_,
    required this.type,
    this.when,
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

}



