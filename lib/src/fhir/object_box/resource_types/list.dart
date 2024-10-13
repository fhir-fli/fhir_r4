// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirList {
  ObjectBoxFhirList({
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
    required this.status,
    ObjectBoxElement? statusElement,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.title,
    ObjectBoxElement? titleElement,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? source,
    ObjectBoxCodeableConcept? orderedBy,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxListEntry>? entry,
    ObjectBoxCodeableConcept? emptyReason,
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
    this.statusElement.target = statusElement;
    this.modeElement.target = modeElement;
    this.titleElement.target = titleElement;
    this.code.target = code;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.dateElement.target = dateElement;
    this.source.target = source;
    this.orderedBy.target = orderedBy;
    this.note.addAll(note ?? []);
    this.entry.addAll(entry ?? []);
    this.emptyReason.target = emptyReason;
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> orderedBy = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxListEntry> entry = ToMany<ObjectBoxListEntry>();
  ToOne<ObjectBoxCodeableConcept> emptyReason =
      ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxListEntry {
  ObjectBoxListEntry({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? flag,
    this.deleted,
    ObjectBoxElement? deletedElement,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? item,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.flag.target = flag;
    this.deletedElement.target = deletedElement;
    this.dateElement.target = dateElement;
    this.item.target = item;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> flag = ToOne<ObjectBoxCodeableConcept>();
  bool? deleted;
  ToOne<ObjectBoxElement> deletedElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> item = ToOne<ObjectBoxReference>();
}
