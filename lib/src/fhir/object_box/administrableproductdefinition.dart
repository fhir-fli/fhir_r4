import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class AdministrableProductDefinition extends Resource {
  AdministrableProductDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToMany<Reference>? formOf = ToMany<Reference>();
  ToOne<CodeableConcept>? administrableDoseForm = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? unitOfPresentation = ToOne<CodeableConcept>();
  ToMany<Reference>? producedFrom = ToMany<Reference>();
  ToMany<CodeableConcept>? ingredient = ToMany<CodeableConcept>();
  ToOne<Reference>? device = ToOne<Reference>();
  ToMany<AdministrableProductDefinitionProperty>? property =
      ToMany<AdministrableProductDefinitionProperty>();
  ToMany<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration =
      ToMany<AdministrableProductDefinitionRouteOfAdministration>();
}

@Entity()
class AdministrableProductDefinitionProperty {
  AdministrableProductDefinitionProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
    this.valueAttachment,
    this.status,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  String? valueDate;
  bool? valueBoolean;
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
}

@Entity()
class AdministrableProductDefinitionRouteOfAdministration {
  AdministrableProductDefinitionRouteOfAdministration({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Quantity>? firstDose = ToOne<Quantity>();
  ToOne<Quantity>? maxSingleDose = ToOne<Quantity>();
  ToOne<Quantity>? maxDosePerDay = ToOne<Quantity>();
  ToOne<Ratio>? maxDosePerTreatmentPeriod = ToOne<Ratio>();
  ToOne<FhirDuration>? maxTreatmentPeriod = ToOne<FhirDuration>();
  ToMany<AdministrableProductDefinitionTargetSpecies>? targetSpecies =
      ToMany<AdministrableProductDefinitionTargetSpecies>();
}

@Entity()
class AdministrableProductDefinitionTargetSpecies {
  AdministrableProductDefinitionTargetSpecies({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToMany<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod =
      ToMany<AdministrableProductDefinitionWithdrawalPeriod>();
}

@Entity()
class AdministrableProductDefinitionWithdrawalPeriod {
  AdministrableProductDefinitionWithdrawalPeriod({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> tissue = ToOne<CodeableConcept>();
  ToOne<Quantity> value = ToOne<Quantity>();
  String? supportingInformation;
}
