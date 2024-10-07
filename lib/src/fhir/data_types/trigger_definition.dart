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
  final FhirDate? timingFhirDate;
  final Element? timingFhirDateElement;
  final FhirDateTime? timingFhirDateTime;
  final Element? timingFhirDateTimeElement;
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
    this.timingFhirDate,
this.timingFhirDateElement,
    this.timingFhirDateTime,
this.timingFhirDateTimeElement,
    this.data,
    this.condition,
  });

@override
TriggerDefinition clone() => throw UnimplementedError();
}

