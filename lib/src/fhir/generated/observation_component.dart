import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ObservationComponent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final Quantity valueQuantity;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final Range valueRange;
  final Ratio valueRatio;
  final SampledData valueSampledData;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final Period valuePeriod;
  final CodeableConcept dataAbsentReason;
  final List<CodeableConcept> interpretation;
  final List<ObservationReferenceRange> referenceRange;
  const ObservationComponent({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.ValueString,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueInteger,
    this.ValueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.ValueTime,
    this.valueDateTime,
    this.ValueDateTime,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });
}
