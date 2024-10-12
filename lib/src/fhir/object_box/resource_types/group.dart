// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirGroup {
  ObjectBoxFhirGroup({
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
    required this.type,
    this.typeElement,
    required this.actual,
    this.actualElement,
    this.code,
    this.name,
    this.nameElement,
    this.quantity,
    this.quantityElement,
    this.managingEntity,
    this.characteristic,
    this.member,
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
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  bool actual;
  ToOne<ObjectBoxElement>? actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  int? quantity;
  ToOne<ObjectBoxElement>? quantityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? managingEntity = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxGroupCharacteristic>? characteristic =
      ToMany<ObjectBoxGroupCharacteristic>();
  ToMany<ObjectBoxGroupMember>? member = ToMany<ObjectBoxGroupMember>();
}

@Entity()
class ObjectBoxGroupCharacteristic {
  ObjectBoxGroupCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    required this.exclude,
    this.excludeElement,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
  bool exclude;
  ToOne<ObjectBoxElement>? excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxGroupMember {
  ObjectBoxGroupMember({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.inactiveElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> entity = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  bool? inactive;
  ToOne<ObjectBoxElement>? inactiveElement = ToOne<ObjectBoxElement>();
}
