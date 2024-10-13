// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirGroup {
  ObjectBoxFhirGroup({
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
    this.active,
    ObjectBoxElement? activeElement,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.actual,
    ObjectBoxElement? actualElement,
    ObjectBoxCodeableConcept? code,
    this.name,
    ObjectBoxElement? nameElement,
    this.quantity,
    ObjectBoxElement? quantityElement,
    ObjectBoxReference? managingEntity,
    List<ObjectBoxGroupCharacteristic>? characteristic,
    List<ObjectBoxGroupMember>? member,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.activeElement.target = activeElement;
    this.typeElement.target = typeElement;
    this.actualElement.target = actualElement;
    this.code.target = code;
    this.nameElement.target = nameElement;
    this.quantityElement.target = quantityElement;
    this.managingEntity.target = managingEntity;
    this.characteristic.addAll(characteristic ?? []);
    this.member.addAll(member ?? []);
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
  bool? active;
  ToOne<ObjectBoxElement> activeElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  bool actual;
  ToOne<ObjectBoxElement> actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  int? quantity;
  ToOne<ObjectBoxElement> quantityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> managingEntity = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxGroupCharacteristic> characteristic =
      ToMany<ObjectBoxGroupCharacteristic>();
  ToMany<ObjectBoxGroupMember> member = ToMany<ObjectBoxGroupMember>();
}

@Entity()
class ObjectBoxGroupCharacteristic {
  ObjectBoxGroupCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    ObjectBoxReference? valueReference,
    required this.exclude,
    ObjectBoxElement? excludeElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueReference.target = valueReference;
    this.excludeElement.target = excludeElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  bool exclude;
  ToOne<ObjectBoxElement> excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxGroupMember {
  ObjectBoxGroupMember({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? entity,
    ObjectBoxPeriod? period,
    this.inactive,
    ObjectBoxElement? inactiveElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.entity.target = entity;
    this.period.target = period;
    this.inactiveElement.target = inactiveElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> entity = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  bool? inactive;
  ToOne<ObjectBoxElement> inactiveElement = ToOne<ObjectBoxElement>();
}
