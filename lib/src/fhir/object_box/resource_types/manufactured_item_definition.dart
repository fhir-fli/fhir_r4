// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxManufacturedItemDefinition {
  ObjectBoxManufacturedItemDefinition({
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? manufacturedDoseForm,
    ObjectBoxCodeableConcept? unitOfPresentation,
    List<ObjectBoxReference>? manufacturer,
    List<ObjectBoxCodeableConcept>? ingredient,
    List<ObjectBoxManufacturedItemDefinitionProperty>? property,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.manufacturedDoseForm.target = manufacturedDoseForm;
    this.unitOfPresentation.target = unitOfPresentation;
    this.manufacturer.addAll(manufacturer ?? []);
    this.ingredient.addAll(ingredient ?? []);
    this.property.addAll(property ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> manufacturedDoseForm =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unitOfPresentation =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> manufacturer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> ingredient =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxManufacturedItemDefinitionProperty> property =
      ToMany<ObjectBoxManufacturedItemDefinitionProperty>();
}

@Entity()
class ObjectBoxManufacturedItemDefinitionProperty {
  ObjectBoxManufacturedItemDefinitionProperty({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    ObjectBoxAttachment? valueAttachment,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueDateElement.target = valueDateElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueAttachment.target = valueAttachment;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
}
