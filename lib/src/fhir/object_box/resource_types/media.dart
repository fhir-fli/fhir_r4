// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedia {
  ObjectBoxMedia({
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
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? modality,
    ObjectBoxCodeableConcept? view,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.createdDateTime,
    ObjectBoxElement? createdDateTimeElement,
    ObjectBoxPeriod? createdPeriod,
    this.issued,
    ObjectBoxElement? issuedElement,
    ObjectBoxReference? operator_,
    List<ObjectBoxCodeableConcept>? reasonCode,
    ObjectBoxCodeableConcept? bodySite,
    this.deviceName,
    ObjectBoxElement? deviceNameElement,
    ObjectBoxReference? device,
    this.height,
    ObjectBoxElement? heightElement,
    this.width,
    ObjectBoxElement? widthElement,
    this.frames,
    ObjectBoxElement? framesElement,
    this.duration,
    ObjectBoxElement? durationElement,
    ObjectBoxAttachment? content,
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
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.modality.target = modality;
    this.view.target = view;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.createdDateTimeElement.target = createdDateTimeElement;
    this.createdPeriod.target = createdPeriod;
    this.issuedElement.target = issuedElement;
    this.operator_.target = operator_;
    this.reasonCode.addAll(reasonCode ?? []);
    this.bodySite.target = bodySite;
    this.deviceNameElement.target = deviceNameElement;
    this.device.target = device;
    this.heightElement.target = heightElement;
    this.widthElement.target = widthElement;
    this.framesElement.target = framesElement;
    this.durationElement.target = durationElement;
    this.content.target = content;
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
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> modality = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> view = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? createdDateTime;
  ToOne<ObjectBoxElement> createdDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> createdPeriod = ToOne<ObjectBoxPeriod>();
  String? issued;
  ToOne<ObjectBoxElement> issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> operator_ = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> bodySite = ToOne<ObjectBoxCodeableConcept>();
  String? deviceName;
  ToOne<ObjectBoxElement> deviceNameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  int? height;
  ToOne<ObjectBoxElement> heightElement = ToOne<ObjectBoxElement>();
  int? width;
  ToOne<ObjectBoxElement> widthElement = ToOne<ObjectBoxElement>();
  int? frames;
  ToOne<ObjectBoxElement> framesElement = ToOne<ObjectBoxElement>();
  double? duration;
  ToOne<ObjectBoxElement> durationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> content = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}
