// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAdministrableProductDefinition {
  ObjectBoxAdministrableProductDefinition({
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
    List<ObjectBoxReference>? formOf,
    ObjectBoxCodeableConcept? administrableDoseForm,
    ObjectBoxCodeableConcept? unitOfPresentation,
    List<ObjectBoxReference>? producedFrom,
    List<ObjectBoxCodeableConcept>? ingredient,
    ObjectBoxReference? device,
    List<ObjectBoxAdministrableProductDefinitionProperty>? property,
    List<ObjectBoxAdministrableProductDefinitionRouteOfAdministration>?
        routeOfAdministration,
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
    this.formOf.addAll(formOf ?? []);
    this.administrableDoseForm.target = administrableDoseForm;
    this.unitOfPresentation.target = unitOfPresentation;
    this.producedFrom.addAll(producedFrom ?? []);
    this.ingredient.addAll(ingredient ?? []);
    this.device.target = device;
    this.property.addAll(property ?? []);
    this.routeOfAdministration.addAll(routeOfAdministration ?? []);
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
  ToMany<ObjectBoxReference> formOf = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> administrableDoseForm =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> unitOfPresentation =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> producedFrom = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> ingredient =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxAdministrableProductDefinitionProperty> property =
      ToMany<ObjectBoxAdministrableProductDefinitionProperty>();
  ToMany<ObjectBoxAdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration =
      ToMany<ObjectBoxAdministrableProductDefinitionRouteOfAdministration>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionProperty {
  ObjectBoxAdministrableProductDefinitionProperty({
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
    ObjectBoxCodeableConcept? status,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueDateElement.target = valueDateElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueAttachment.target = valueAttachment;
    this.status.target = status;
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
  ToOne<ObjectBoxCodeableConcept> status = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionRouteOfAdministration {
  ObjectBoxAdministrableProductDefinitionRouteOfAdministration({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxQuantity? firstDose,
    ObjectBoxQuantity? maxSingleDose,
    ObjectBoxQuantity? maxDosePerDay,
    ObjectBoxRatio? maxDosePerTreatmentPeriod,
    ObjectBoxFhirDuration? maxTreatmentPeriod,
    List<ObjectBoxAdministrableProductDefinitionTargetSpecies>? targetSpecies,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.firstDose.target = firstDose;
    this.maxSingleDose.target = maxSingleDose;
    this.maxDosePerDay.target = maxDosePerDay;
    this.maxDosePerTreatmentPeriod.target = maxDosePerTreatmentPeriod;
    this.maxTreatmentPeriod.target = maxTreatmentPeriod;
    this.targetSpecies.addAll(targetSpecies ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> firstDose = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> maxSingleDose = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> maxDosePerDay = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> maxDosePerTreatmentPeriod = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxFhirDuration> maxTreatmentPeriod =
      ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxAdministrableProductDefinitionTargetSpecies> targetSpecies =
      ToMany<ObjectBoxAdministrableProductDefinitionTargetSpecies>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionTargetSpecies {
  ObjectBoxAdministrableProductDefinitionTargetSpecies({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxAdministrableProductDefinitionWithdrawalPeriod>?
        withdrawalPeriod,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.withdrawalPeriod.addAll(withdrawalPeriod ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAdministrableProductDefinitionWithdrawalPeriod>
      withdrawalPeriod =
      ToMany<ObjectBoxAdministrableProductDefinitionWithdrawalPeriod>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionWithdrawalPeriod {
  ObjectBoxAdministrableProductDefinitionWithdrawalPeriod({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? tissue,
    ObjectBoxQuantity? value,
    this.supportingInformation,
    ObjectBoxElement? supportingInformationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.tissue.target = tissue;
    this.value.target = value;
    this.supportingInformationElement.target = supportingInformationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> tissue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> value = ToOne<ObjectBoxQuantity>();
  String? supportingInformation;
  ToOne<ObjectBoxElement> supportingInformationElement =
      ToOne<ObjectBoxElement>();
}
