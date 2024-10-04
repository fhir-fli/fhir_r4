import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Reference> formOf;
  final CodeableConcept administrableDoseForm;
  final CodeableConcept unitOfPresentation;
  final List<Reference> producedFrom;
  final List<CodeableConcept> ingredient;
  final Reference device;
  final List<AdministrableProductDefinitionProperty> property;
  final List<AdministrableProductDefinitionRouteOfAdministration> routeOfAdministration;
  const AdministrableProductDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.formOf,
    required this.administrableDoseForm,
    required this.unitOfPresentation,
    required this.producedFrom,
    required this.ingredient,
    required this.device,
    required this.property,
    required this.routeOfAdministration,
  });
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionProperty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Attachment valueAttachment;
  final CodeableConcept status;
  const AdministrableProductDefinitionProperty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueAttachment,
    required this.status,
  });
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionRouteOfAdministration {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity firstDose;
  final Quantity maxSingleDose;
  final Quantity maxDosePerDay;
  final Ratio maxDosePerTreatmentPeriod;
  final FhirDuration maxTreatmentPeriod;
  final List<AdministrableProductDefinitionTargetSpecies> targetSpecies;
  const AdministrableProductDefinitionRouteOfAdministration({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.firstDose,
    required this.maxSingleDose,
    required this.maxDosePerDay,
    required this.maxDosePerTreatmentPeriod,
    required this.maxTreatmentPeriod,
    required this.targetSpecies,
  });
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionTargetSpecies {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<AdministrableProductDefinitionWithdrawalPeriod> withdrawalPeriod;
  const AdministrableProductDefinitionTargetSpecies({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.withdrawalPeriod,
  });
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionWithdrawalPeriod {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept tissue;
  final Quantity value;
  final String supportingInformation;
  final PrimitiveElement supportingInformationElement;
  const AdministrableProductDefinitionWithdrawalPeriod({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.tissue,
    required this.value,
    required this.supportingInformation,
    required this.supportingInformationElement,
  });
}


