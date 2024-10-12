// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxAdministrableProductDefinition {
  ObjectBoxAdministrableProductDefinition({
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
    this.formOf,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.producedFrom,
    this.ingredient,
    this.device,
    this.property,
    required this.routeOfAdministration,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? formOf = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? administrableDoseForm =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? unitOfPresentation =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? producedFrom = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? ingredient =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? device = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxAdministrableProductDefinitionProperty>? property =
      ToMany<ObjectBoxAdministrableProductDefinitionProperty>();
  ToMany<ObjectBoxAdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration =
      ToMany<ObjectBoxAdministrableProductDefinitionRouteOfAdministration>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionProperty {
  ObjectBoxAdministrableProductDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    this.status,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? status = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionRouteOfAdministration {
  ObjectBoxAdministrableProductDefinitionRouteOfAdministration({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? firstDose = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? maxSingleDose = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity>? maxDosePerDay = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio>? maxDosePerTreatmentPeriod = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxFhirDuration>? maxTreatmentPeriod =
      ToOne<ObjectBoxFhirDuration>();
  ToMany<ObjectBoxAdministrableProductDefinitionTargetSpecies>? targetSpecies =
      ToMany<ObjectBoxAdministrableProductDefinitionTargetSpecies>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionTargetSpecies {
  ObjectBoxAdministrableProductDefinitionTargetSpecies({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAdministrableProductDefinitionWithdrawalPeriod>?
      withdrawalPeriod =
      ToMany<ObjectBoxAdministrableProductDefinitionWithdrawalPeriod>();
}

@Entity()
class ObjectBoxAdministrableProductDefinitionWithdrawalPeriod {
  ObjectBoxAdministrableProductDefinitionWithdrawalPeriod({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.supportingInformationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> tissue = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> value = ToOne<ObjectBoxQuantity>();
  String? supportingInformation;
  ToOne<ObjectBoxElement>? supportingInformationElement =
      ToOne<ObjectBoxElement>();
}
