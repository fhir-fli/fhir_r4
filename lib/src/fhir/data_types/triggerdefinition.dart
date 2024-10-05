import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TriggerDefinition extends DataType {
  final dynamic? type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final Timing? timingTiming;
  final Reference? timingReference;
  final FhirString? timingDate;
  final Element? timingDateElement;
  final FhirString? timingDateTime;
  final Element? timingDateTimeElement;
  final List<DataRequirement>? data;
  final FhirExpression? condition;

  TriggerDefinition({
    super.id,
    super.extension_,
    this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.timingDateElement,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.data,
    this.condition,
  });

}



