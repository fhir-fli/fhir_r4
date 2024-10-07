import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Immunization extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Immunization clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationPerformer extends BackboneElement {
  ImmunizationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? function_;
  final Reference actor;
  @override
  ImmunizationPerformer clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationEducation extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? documentType;
  final Element? documentTypeElement;
  final FhirUri? reference;
  final Element? referenceElement;
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;
  final FhirDateTime? presentationDate;
  final Element? presentationDateElement;
  @override
  ImmunizationEducation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationReaction extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? detail;
  final FhirBoolean? reported;
  final Element? reportedElement;
  @override
  ImmunizationReaction clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImmunizationProtocolApplied extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  ImmunizationProtocolApplied clone() => throw UnimplementedError();
}
