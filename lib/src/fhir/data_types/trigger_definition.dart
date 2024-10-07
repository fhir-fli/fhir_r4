import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class TriggerDefinition extends DataType {
  final FhirCode type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final Timing? timingTiming;
  final Reference? timingReference;
  final FhirDate? timingDate;
  final Element? timingDateElement;
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;
  final List<DataRequirement>? data;
  final FhirExpression? condition;

  TriggerDefinition({
    super.id,
    super.extension_,
    required this.type,
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

@override
TriggerDefinition clone() => throw UnimplementedError();
}

