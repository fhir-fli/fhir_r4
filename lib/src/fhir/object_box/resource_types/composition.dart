// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxComposition {
  ObjectBoxComposition({
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
    required this.status,
    this.statusElement,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    this.dateElement,
    required this.author,
    required this.title,
    this.titleElement,
    this.confidentiality,
    this.confidentialityElement,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
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
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  String title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? confidentiality;
  ToOne<ObjectBoxElement>? confidentialityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCompositionAttester>? attester =
      ToMany<ObjectBoxCompositionAttester>();
  ToOne<ObjectBoxReference>? custodian = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCompositionRelatesTo>? relatesTo =
      ToMany<ObjectBoxCompositionRelatesTo>();
  ToMany<ObjectBoxCompositionEvent>? event =
      ToMany<ObjectBoxCompositionEvent>();
  ToMany<ObjectBoxCompositionSection>? section =
      ToMany<ObjectBoxCompositionSection>();
}

@Entity()
class ObjectBoxCompositionAttester {
  ObjectBoxCompositionAttester({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.modeElement,
    this.time,
    this.timeElement,
    this.party,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? time;
  ToOne<ObjectBoxElement>? timeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? party = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionRelatesTo {
  ObjectBoxCompositionRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.targetIdentifier,
    this.targetReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier>? targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference>? targetReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionEvent {
  ObjectBoxCompositionEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference>? detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCompositionSection {
  ObjectBoxCompositionSection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.titleElement,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? author = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? focus = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  String? mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? orderedBy =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? entry = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? emptyReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCompositionSection>? section =
      ToMany<ObjectBoxCompositionSection>();
}
