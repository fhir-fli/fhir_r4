import 'package:dataclass/dataclass.dart';
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
  final FhirDateTime occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final FhirString occurrenceString;
  final Element? occurrenceStringElement;
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
  final List<ImmunizationPerformer>? performer;
  final List<Annotation>? note;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final FhirBoolean? isSubpotent;
  final Element? isSubpotentElement;
  final List<CodeableConcept>? subpotentReason;
  final List<ImmunizationEducation>? education;
  final List<CodeableConcept>? programEligibility;
  final CodeableConcept? fundingSource;
  final List<ImmunizationReaction>? reaction;
  final List<ImmunizationProtocolApplied>? protocolApplied;

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
    required this.occurrenceDateTime,
this.occurrenceDateTimeElement,
    required this.occurrenceString,
this.occurrenceStringElement,
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
  final FhirPositiveInt doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;
  final FhirString doseNumberString;
  final Element? doseNumberStringElement;
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;

  ImmunizationProtocolApplied({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
this.seriesElement,
    this.authority,
    this.targetDisease,
    required this.doseNumberPositiveInt,
this.doseNumberPositiveIntElement,
    required this.doseNumberString,
this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
this.seriesDosesStringElement,
  });

@override
ImmunizationProtocolApplied clone() => throw UnimplementedError();
}

