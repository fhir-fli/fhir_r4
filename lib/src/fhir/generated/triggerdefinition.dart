import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TriggerDefinition {
  final String id;
  final List<Extension> extension;
  final dynamic type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final Timing timingTiming;
  final Reference timingReference;
  final String timingDate;
  final PrimitiveElement TimingDate;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final List<DataRequirement> data;
  final FhirExpression condition;
  const TriggerDefinition({
    this.id,
    this.extension,
    this.type,
    this.Type,
    this.name,
    this.Name,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.TimingDate,
    this.timingDateTime,
    this.TimingDateTime,
    this.data,
    this.condition,
  });
}
