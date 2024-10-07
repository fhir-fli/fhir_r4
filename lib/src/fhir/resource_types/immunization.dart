import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Immunization extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final CodeableConcept vaccineCode;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime occurrenceFhirDateTime;
  final Element? occurrenceFhirDateTimeElement;
  final FhirString occurrenceFhirString;
  final Element? occurrenceFhirStringElement;
  final FhirDateTime? recorded;
  final Element? recordedElement;
  final FhirBoolean? primarySource;
  final Element? primarySourceElement;
  final CodeableConcept? reportOrigin;
  final Reference? location;
  final Reference? manufacturer;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDate? expirationDate;
  final Element? expirationDateElement;
  final CodeableConcept? site;
  final CodeableConcept? route;
  final Quantity? doseQuantity;
  final List<BackboneElement>? performer;
  final List<Annotation>? note;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final FhirBoolean? isSubpotent;
  final Element? isSubpotentElement;
  final List<CodeableConcept>? subpotentReason;
  final List<BackboneElement>? education;
  final List<CodeableConcept>? programEligibility;
  final CodeableConcept? fundingSource;
  final List<BackboneElement>? reaction;
  final List<BackboneElement>? protocolApplied;

  Immunization({
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
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    required this.occurrenceFhirDateTime,
this.occurrenceFhirDateTimeElement,
    required this.occurrenceFhirString,
this.occurrenceFhirStringElement,
    this.recorded,
this.recordedElement,
    this.primarySource,
this.primarySourceElement,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
this.lotNumberElement,
    this.expirationDate,
this.expirationDateElement,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
this.isSubpotentElement,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
  }) : super(resourceType: R4ResourceType.Immunization);

@override
Immunization clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationPerformer extends BackboneElement {
  final CodeableConcept? function_;
  final Reference actor;

  ImmunizationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

@override
ImmunizationPerformer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationEducation extends BackboneElement {
  final FhirString? documentType;
  final Element? documentTypeElement;
  final FhirUri? reference;
  final Element? referenceElement;
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;
  final FhirDateTime? presentationDate;
  final Element? presentationDateElement;

  ImmunizationEducation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.documentType,
this.documentTypeElement,
    this.reference,
this.referenceElement,
    this.publicationDate,
this.publicationDateElement,
    this.presentationDate,
this.presentationDateElement,
  });

@override
ImmunizationEducation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationReaction extends BackboneElement {
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? detail;
  final FhirBoolean? reported;
  final Element? reportedElement;

  ImmunizationReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
this.dateElement,
    this.detail,
    this.reported,
this.reportedElement,
  });

@override
ImmunizationReaction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImmunizationProtocolApplied extends BackboneElement {
  final FhirString? series;
  final Element? seriesElement;
  final Reference? authority;
  final List<CodeableConcept>? targetDisease;
  final FhirPositiveInt doseNumberFhirPositiveInt;
  final Element? doseNumberFhirPositiveIntElement;
  final FhirString doseNumberFhirString;
  final Element? doseNumberFhirStringElement;
  final FhirPositiveInt? seriesDosesFhirPositiveInt;
  final Element? seriesDosesFhirPositiveIntElement;
  final FhirString? seriesDosesFhirString;
  final Element? seriesDosesFhirStringElement;

  ImmunizationProtocolApplied({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
this.seriesElement,
    this.authority,
    this.targetDisease,
    required this.doseNumberFhirPositiveInt,
this.doseNumberFhirPositiveIntElement,
    required this.doseNumberFhirString,
this.doseNumberFhirStringElement,
    this.seriesDosesFhirPositiveInt,
this.seriesDosesFhirPositiveIntElement,
    this.seriesDosesFhirString,
this.seriesDosesFhirStringElement,
  });

@override
ImmunizationProtocolApplied clone() => throw UnimplementedError();
}

