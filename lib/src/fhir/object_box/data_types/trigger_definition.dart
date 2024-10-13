// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTriggerDefinition {
  ObjectBoxTriggerDefinition({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    required this.type,
    ObjectBoxElement? typeElement,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxTiming? timingTiming,
    ObjectBoxReference? timingReference,
    this.timingDate,
    ObjectBoxElement? timingDateElement,
    this.timingDateTime,
    ObjectBoxElement? timingDateTimeElement,
    List<ObjectBoxDataRequirement>? data,
    ObjectBoxFhirExpression? condition,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.typeElement.target = typeElement;
    this.nameElement.target = nameElement;
    this.timingTiming.target = timingTiming;
    this.timingReference.target = timingReference;
    this.timingDateElement.target = timingDateElement;
    this.timingDateTimeElement.target = timingDateTimeElement;
    this.data.addAll(data ?? []);
    this.condition.target = condition;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming> timingTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxReference> timingReference = ToOne<ObjectBoxReference>();
  String? timingDate;
  ToOne<ObjectBoxElement> timingDateElement = ToOne<ObjectBoxElement>();
  String? timingDateTime;
  ToOne<ObjectBoxElement> timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirement> data = ToMany<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> condition = ToOne<ObjectBoxFhirExpression>();
}
