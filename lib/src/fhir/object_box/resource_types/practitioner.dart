// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPractitioner {
  ObjectBoxPractitioner({
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
    this.active,
    this.activeElement,
    this.name,
    this.telecom,
    this.address,
    this.gender,
    this.genderElement,
    this.birthDate,
    this.birthDateElement,
    this.photo,
    this.qualification,
    this.communication,
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
  bool? active;
  ToOne<ObjectBoxElement>? activeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxHumanName>? name = ToMany<ObjectBoxHumanName>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxAddress>? address = ToMany<ObjectBoxAddress>();
  String? gender;
  ToOne<ObjectBoxElement>? genderElement = ToOne<ObjectBoxElement>();
  String? birthDate;
  ToOne<ObjectBoxElement>? birthDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAttachment>? photo = ToMany<ObjectBoxAttachment>();
  ToMany<ObjectBoxPractitionerQualification>? qualification =
      ToMany<ObjectBoxPractitionerQualification>();
  ToMany<ObjectBoxCodeableConcept>? communication =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxPractitionerQualification {
  ObjectBoxPractitionerQualification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.code,
    this.period,
    this.issuer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference>? issuer = ToOne<ObjectBoxReference>();
}
