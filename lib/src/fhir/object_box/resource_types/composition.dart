// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxComposition {
  ObjectBoxComposition({
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
    ObjectBoxIdentifier? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    required this.date,
    ObjectBoxElement? dateElement,
    List<ObjectBoxReference>? author,
    required this.title,
    ObjectBoxElement? titleElement,
    this.confidentiality,
    ObjectBoxElement? confidentialityElement,
    List<ObjectBoxCompositionAttester>? attester,
    ObjectBoxReference? custodian,
    List<ObjectBoxCompositionRelatesTo>? relatesTo,
    List<ObjectBoxCompositionEvent>? event,
    List<ObjectBoxCompositionSection>? section,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.category.addAll(category ?? []);
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.dateElement.target = dateElement;
    this.author.addAll(author ?? []);
    this.titleElement.target = titleElement;
    this.confidentialityElement.target = confidentialityElement;
    this.attester.addAll(attester ?? []);
    this.custodian.target = custodian;
    this.relatesTo.addAll(relatesTo ?? []);
    this.event.addAll(event ?? []);
    this.section.addAll(section ?? []);
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  String title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? confidentiality;
  ToOne<ObjectBoxElement> confidentialityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCompositionAttester> attester =
      ToMany<ObjectBoxCompositionAttester>();
  ToOne<ObjectBoxReference> custodian = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCompositionRelatesTo> relatesTo =
      ToMany<ObjectBoxCompositionRelatesTo>();
  ToMany<ObjectBoxCompositionEvent> event = ToMany<ObjectBoxCompositionEvent>();
  ToMany<ObjectBoxCompositionSection> section =
      ToMany<ObjectBoxCompositionSection>();
}

@Entity()
class ObjectBoxCompositionAttester {
  ObjectBoxCompositionAttester({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.time,
    ObjectBoxElement? timeElement,
    ObjectBoxReference? party,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.timeElement.target = timeElement;
    this.party.target = party;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement> timeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> party = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionRelatesTo {
  ObjectBoxCompositionRelatesTo({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    ObjectBoxIdentifier? targetIdentifier,
    ObjectBoxReference? targetReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.targetIdentifier.target = targetIdentifier;
    this.targetReference.target = targetReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> targetReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionEvent {
  ObjectBoxCompositionEvent({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? code,
    ObjectBoxPeriod? period,
    List<ObjectBoxReference>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.addAll(code ?? []);
    this.period.target = period;
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionSection {
  ObjectBoxCompositionSection({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.title,
    ObjectBoxElement? titleElement,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxReference>? author,
    ObjectBoxReference? focus,
    ObjectBoxNarrative? text,
    this.mode,
    ObjectBoxElement? modeElement,
    ObjectBoxCodeableConcept? orderedBy,
    List<ObjectBoxReference>? entry,
    ObjectBoxCodeableConcept? emptyReason,
    List<ObjectBoxCompositionSection>? section,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.titleElement.target = titleElement;
    this.code.target = code;
    this.author.addAll(author ?? []);
    this.focus.target = focus;
    this.text.target = text;
    this.modeElement.target = modeElement;
    this.orderedBy.target = orderedBy;
    this.entry.addAll(entry ?? []);
    this.emptyReason.target = emptyReason;
    this.section.addAll(section ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> focus = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  String? mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> orderedBy = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> entry = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> emptyReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCompositionSection> section =
      ToMany<ObjectBoxCompositionSection>();
}
