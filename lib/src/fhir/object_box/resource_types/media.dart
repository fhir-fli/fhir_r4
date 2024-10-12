// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMedia {
  ObjectBoxMedia({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdDateTimeElement,
    this.createdPeriod,
    this.issued,
    this.issuedElement,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.deviceNameElement,
    this.device,
    this.height,
    this.heightElement,
    this.width,
    this.widthElement,
    this.frames,
    this.framesElement,
    this.duration,
    this.durationElement,
    required this.content,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? modality = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? view = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? createdDateTime;
  ToOne<ObjectBoxElement>? createdDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? createdPeriod = ToOne<ObjectBoxPeriod>();
  String? issued;
  ToOne<ObjectBoxElement>? issuedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? operator_ = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? bodySite = ToOne<ObjectBoxCodeableConcept>();
  String? deviceName;
  ToOne<ObjectBoxElement>? deviceNameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? device = ToOne<ObjectBoxReference>();
  int? height;
  ToOne<ObjectBoxElement>? heightElement = ToOne<ObjectBoxElement>();
  int? width;
  ToOne<ObjectBoxElement>? widthElement = ToOne<ObjectBoxElement>();
  int? frames;
  ToOne<ObjectBoxElement>? framesElement = ToOne<ObjectBoxElement>();
  double? duration;
  ToOne<ObjectBoxElement>? durationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> content = ToOne<ObjectBoxAttachment>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}
