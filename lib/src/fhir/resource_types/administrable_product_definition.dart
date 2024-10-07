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
  final List<BackboneElement>? property;
  final List<BackboneElement> routeOfAdministration;
  final List<BackboneElement>? targetSpecies;
  final List<BackboneElement>? withdrawalPeriod;

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
    this.targetSpecies,
    this.withdrawalPeriod,
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
  final FhirDate? valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final Attachment? valueAttachment;
  final CodeableConcept? status;

  AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueFhirDate,
this.valueFhirDateElement,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueAttachment,
    this.status,
  });

@override
AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionRouteOfAdministration extends BackboneElement {
  final CodeableConcept code;
  final Quantity? firstDose;
  final Quantity? maxSingleDose;
  final Quantity? maxDosePerDay;
  final Ratio? maxDosePerTreatmentPeriod;
  final FhirDuration? maxTreatmentPeriod;

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
  });

@override
AdministrableProductDefinitionRouteOfAdministration clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  final CodeableConcept code;

  AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
  });

@override
AdministrableProductDefinitionTargetSpecies clone() => throw UnimplementedError();
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
AdministrableProductDefinitionWithdrawalPeriod clone() => throw UnimplementedError();
}

