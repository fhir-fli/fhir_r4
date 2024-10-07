import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class AdministrableProductDefinition extends DomainResource {
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
  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class AdministrableProductDefinitionProperty extends BackboneElement {
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

  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;
  final CodeableConcept? status;
  @override
  AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
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

  final CodeableConcept code;
  final Quantity? firstDose;
  final Quantity? maxSingleDose;
  final Quantity? maxDosePerDay;
  final Ratio? maxDosePerTreatmentPeriod;
  final FhirDuration? maxTreatmentPeriod;
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;
  @override
  AdministrableProductDefinitionRouteOfAdministration clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
  });

  final CodeableConcept code;
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
}

@JsonCodable()
@Data()
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.supportingInformationElement,
  });

  final CodeableConcept tissue;
  final Quantity value;
  final FhirString? supportingInformation;
  final Element? supportingInformationElement;
  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
}
