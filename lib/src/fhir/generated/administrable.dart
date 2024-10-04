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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> formOf;
  final CodeableConcept administrableDoseForm;
  final CodeableConcept unitOfPresentation;
  final List<Reference> producedFrom;
  final List<CodeableConcept> ingredient;
  final Reference device;
  final List<AdministrableProductDefinitionProperty> property;
  final List<AdministrableProductDefinitionRouteOfAdministration> routeOfAdministration;
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionProperty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final Attachment valueAttachment;
  final CodeableConcept status;
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionRouteOfAdministration {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity firstDose;
  final Quantity maxSingleDose;
  final Quantity maxDosePerDay;
  final Ratio maxDosePerTreatmentPeriod;
  final FhirDuration maxTreatmentPeriod;
  final List<AdministrableProductDefinitionTargetSpecies> targetSpecies;
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionTargetSpecies {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final List<AdministrableProductDefinitionWithdrawalPeriod> withdrawalPeriod;
}

@Data()
@JsonCodable()
class AdministrableProductDefinitionWithdrawalPeriod {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept tissue;
  final Quantity value;
  final String supportingInformation;
  final PrimitiveElement SupportingInformation;
}


