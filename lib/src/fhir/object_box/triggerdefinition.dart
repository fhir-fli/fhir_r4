import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class TriggerDefinition {
  TriggerDefinition({
    this.id,
    this.extension_,
    required this.type,
    this.name,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.timingDateTime,
    this.data,
    this.condition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  String? name;
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToOne<Reference>? timingReference = ToOne<Reference>();
  String? timingDate;
  String? timingDateTime;
  ToMany<DataRequirement>? data = ToMany<DataRequirement>();
  ToOne<FhirExpression>? condition = ToOne<FhirExpression>();
}
