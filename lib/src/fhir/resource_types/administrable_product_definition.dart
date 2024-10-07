import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<Reference>? formOf;
  final CodeableConcept? administrableDoseForm;
  final CodeableConcept? unitOfPresentation;
  final List<Reference>? producedFrom;
  final List<CodeableConcept>? ingredient;
  final Reference? device;
  final List<AdministrableProductDefinitionProperty>? property;
  final List<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration;

  AdministrableProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.AdministrableProductDefinition);

  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionProperty extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;
  final CodeableConcept? status;

  AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
  final CodeableConcept code;
  final Quantity? firstDose;
  final Quantity? maxSingleDose;
  final Quantity? maxDosePerDay;
  final Ratio? maxDosePerTreatmentPeriod;
  final FhirDuration? maxTreatmentPeriod;
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;

  AdministrableProductDefinitionRouteOfAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
  });

  @override
  AdministrableProductDefinitionRouteOfAdministration clone() =>
      throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  final CodeableConcept code;
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;

  AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
  });

  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  final CodeableConcept tissue;
  final Quantity value;
  final FhirString? supportingInformation;
  final Element? supportingInformationElement;

  AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.supportingInformationElement,
  });

  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
}
