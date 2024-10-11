import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class TriggerDefinition {
  TriggerDefinition({
    this.id,
    this.extension_,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToOne<Reference>? timingReference = ToOne<Reference>();
  String? timingDate;
  ToOne<Element>? timingDateElement = ToOne<Element>();
  String? timingDateTime;
  ToOne<Element>? timingDateTimeElement = ToOne<Element>();
  ToMany<DataRequirement>? data = ToMany<DataRequirement>();
  ToOne<FhirExpression>? condition = ToOne<FhirExpression>();
}
