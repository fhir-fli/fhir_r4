// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceUseStatement {
  ObjectBoxDeviceUseStatement({
    this.id,
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
    List<ObjectBoxReference>? basedOn,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? subject,
    List<ObjectBoxReference>? derivedFrom,
    ObjectBoxTiming? timingTiming,
    ObjectBoxPeriod? timingPeriod,
    this.timingDateTime,
    ObjectBoxElement? timingDateTimeElement,
    this.recordedOn,
    ObjectBoxElement? recordedOnElement,
    ObjectBoxReference? source,
    ObjectBoxReference? device,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    ObjectBoxCodeableConcept? bodySite,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.statusElement.target = statusElement;
    this.subject.target = subject;
    this.derivedFrom.addAll(derivedFrom ?? []);
    this.timingTiming.target = timingTiming;
    this.timingPeriod.target = timingPeriod;
    this.timingDateTimeElement.target = timingDateTimeElement;
    this.recordedOnElement.target = recordedOnElement;
    this.source.target = source;
    this.device.target = device;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.bodySite.target = bodySite;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> derivedFrom = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxTiming> timingTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxPeriod> timingPeriod = ToOne<ObjectBoxPeriod>();
  String? timingDateTime;
  ToOne<ObjectBoxElement> timingDateTimeElement = ToOne<ObjectBoxElement>();
  String? recordedOn;
  ToOne<ObjectBoxElement> recordedOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}
