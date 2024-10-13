// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSlot {
  ObjectBoxSlot({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxCodeableConcept>? serviceCategory,
    List<ObjectBoxCodeableConcept>? serviceType,
    List<ObjectBoxCodeableConcept>? specialty,
    ObjectBoxCodeableConcept? appointmentType,
    ObjectBoxReference? schedule,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.start,
    ObjectBoxElement? startElement,
    required this.end,
    ObjectBoxElement? endElement,
    this.overbooked,
    ObjectBoxElement? overbookedElement,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.serviceCategory.addAll(serviceCategory ?? []);
    this.serviceType.addAll(serviceType ?? []);
    this.specialty.addAll(specialty ?? []);
    this.appointmentType.target = appointmentType;
    this.schedule.target = schedule;
    this.statusElement.target = statusElement;
    this.startElement.target = startElement;
    this.endElement.target = endElement;
    this.overbookedElement.target = overbookedElement;
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxCodeableConcept> serviceCategory =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> serviceType =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> appointmentType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> schedule = ToOne<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  String end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  bool? overbooked;
  ToOne<ObjectBoxElement> overbookedElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}
