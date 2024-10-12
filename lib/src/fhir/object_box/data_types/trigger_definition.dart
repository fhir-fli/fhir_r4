// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTriggerDefinition {
  ObjectBoxTriggerDefinition({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming>? timingTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxReference>? timingReference = ToOne<ObjectBoxReference>();
  String? timingDate;
  ToOne<ObjectBoxElement>? timingDateElement = ToOne<ObjectBoxElement>();
  String? timingDateTime;
  ToOne<ObjectBoxElement>? timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDataRequirement>? data = ToMany<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? condition = ToOne<ObjectBoxFhirExpression>();
}
