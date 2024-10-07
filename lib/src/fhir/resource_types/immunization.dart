import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Immunization] /// Describes the event of a patient being administered a vaccine or a record
/// of an immunization as reported by a patient, a clinician or another party.
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

  /// [identifier] /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current status of the immunization event.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Indicates the reason the immunization event was not performed.
  final CodeableConcept? statusReason;

  /// [vaccineCode] /// Vaccine that was administered or was to be administered.
  final CodeableConcept vaccineCode;

  /// [patient] /// The patient who either received or did not receive the immunization.
  final Reference patient;

  /// [encounter] /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  final Reference? encounter;

  /// [occurrenceDateTime] /// Date vaccine administered or was to be administered.
  final FhirDateTime occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrenceString] /// Date vaccine administered or was to be administered.
  final FhirString occurrenceString;
  final Element? occurrenceStringElement;

  /// [recorded] /// The date the occurrence of the immunization was first captured in the
  /// record - potentially significantly after the occurrence of the event.
  final FhirDateTime? recorded;
  final Element? recordedElement;

  /// [primarySource] /// An indication that the content of the record is based on information from
  /// the person who administered the vaccine. This reflects the context under
  /// which the data was originally recorded.
  final FhirBoolean? primarySource;
  final Element? primarySourceElement;

  /// [reportOrigin] /// The source of the data when the report of the immunization event is not
  /// based on information from the person who administered the vaccine.
  final CodeableConcept? reportOrigin;

  /// [location] /// The service delivery location where the vaccine administration occurred.
  final Reference? location;

  /// [manufacturer] /// Name of vaccine manufacturer.
  final Reference? manufacturer;

  /// [lotNumber] /// Lot number of the vaccine product.
  final FhirString? lotNumber;
  final Element? lotNumberElement;

  /// [expirationDate] /// Date vaccine batch expires.
  final FhirDate? expirationDate;
  final Element? expirationDateElement;

  /// [site] /// Body site where vaccine was administered.
  final CodeableConcept? site;

  /// [route] /// The path by which the vaccine product is taken into the body.
  final CodeableConcept? route;

  /// [doseQuantity] /// The quantity of vaccine product that was administered.
  final Quantity? doseQuantity;

  /// [performer] /// Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? performer;

  /// [note] /// Extra information about the immunization that is not conveyed by the other
  /// attributes.
  final List<Annotation>? note;

  /// [reasonCode] /// Reasons why the vaccine was administered.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Condition, Observation or DiagnosticReport that supports why the
  /// immunization was administered.
  final List<Reference>? reasonReference;

  /// [isSubpotent] /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  final FhirBoolean? isSubpotent;
  final Element? isSubpotentElement;

  /// [subpotentReason] /// Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? subpotentReason;

  /// [education] /// Educational material presented to the patient (or guardian) at the time of
  /// vaccine administration.
  final List<ImmunizationEducation>? education;

  /// [programEligibility] /// Indicates a patient's eligibility for a funding program.
  final List<CodeableConcept>? programEligibility;

  /// [fundingSource] /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be eligible
  /// for a publically purchased vaccine but due to inventory issues, vaccine
  /// purchased with private funds was actually administered).
  final CodeableConcept? fundingSource;

  /// [reaction] /// Categorical data indicating that an adverse event is associated in time to
  /// an immunization.
  final List<ImmunizationReaction>? reaction;

  /// [protocolApplied] /// The protocol (set of recommendations) being followed by the provider who
  /// administered the dose.
  final List<ImmunizationProtocolApplied>? protocolApplied;
  @override
  Immunization clone() => throw UnimplementedError();
  Immunization copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? vaccineCode,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    FhirString? occurrenceString,
    Element? occurrenceStringElement,
    FhirDateTime? recorded,
    Element? recordedElement,
    FhirBoolean? primarySource,
    Element? primarySourceElement,
    CodeableConcept? reportOrigin,
    Reference? location,
    Reference? manufacturer,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirDate? expirationDate,
    Element? expirationDateElement,
    CodeableConcept? site,
    CodeableConcept? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirBoolean? isSubpotent,
    Element? isSubpotentElement,
    List<CodeableConcept>? subpotentReason,
    List<ImmunizationEducation>? education,
    List<CodeableConcept>? programEligibility,
    CodeableConcept? fundingSource,
    List<ImmunizationReaction>? reaction,
    List<ImmunizationProtocolApplied>? protocolApplied,
  }) {
    return Immunization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrenceString: occurrenceString ?? this.occurrenceString,
      occurrenceStringElement:
          occurrenceStringElement ?? this.occurrenceStringElement,
      recorded: recorded ?? this.recorded,
      recordedElement: recordedElement ?? this.recordedElement,
      primarySource: primarySource ?? this.primarySource,
      primarySourceElement: primarySourceElement ?? this.primarySourceElement,
      reportOrigin: reportOrigin ?? this.reportOrigin,
      location: location ?? this.location,
      manufacturer: manufacturer ?? this.manufacturer,
      lotNumber: lotNumber ?? this.lotNumber,
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      expirationDate: expirationDate ?? this.expirationDate,
      expirationDateElement:
          expirationDateElement ?? this.expirationDateElement,
      site: site ?? this.site,
      route: route ?? this.route,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      performer: performer ?? this.performer,
      note: note ?? this.note,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      isSubpotent: isSubpotent ?? this.isSubpotent,
      isSubpotentElement: isSubpotentElement ?? this.isSubpotentElement,
      subpotentReason: subpotentReason ?? this.subpotentReason,
      education: education ?? this.education,
      programEligibility: programEligibility ?? this.programEligibility,
      fundingSource: fundingSource ?? this.fundingSource,
      reaction: reaction ?? this.reaction,
      protocolApplied: protocolApplied ?? this.protocolApplied,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationPerformer] /// Indicates who performed the immunization event.
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

  /// [function_] /// Describes the type of performance (e.g. ordering provider, administering
  /// provider, etc.).
  final CodeableConcept? function_;

  /// [actor] /// The practitioner or organization who performed the action.
  final Reference actor;
  @override
  ImmunizationPerformer clone() => throw UnimplementedError();
  ImmunizationPerformer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
  }) {
    return ImmunizationPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationEducation] /// Educational material presented to the patient (or guardian) at the time of
/// vaccine administration.
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

  /// [documentType] /// Identifier of the material presented to the patient.
  final FhirString? documentType;
  final Element? documentTypeElement;

  /// [reference] /// Reference pointer to the educational material given to the patient if the
  /// information was on line.
  final FhirUri? reference;
  final Element? referenceElement;

  /// [publicationDate] /// Date the educational material was published.
  final FhirDateTime? publicationDate;
  final Element? publicationDateElement;

  /// [presentationDate] /// Date the educational material was given to the patient.
  final FhirDateTime? presentationDate;
  final Element? presentationDateElement;
  @override
  ImmunizationEducation clone() => throw UnimplementedError();
  ImmunizationEducation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? documentType,
    Element? documentTypeElement,
    FhirUri? reference,
    Element? referenceElement,
    FhirDateTime? publicationDate,
    Element? publicationDateElement,
    FhirDateTime? presentationDate,
    Element? presentationDateElement,
  }) {
    return ImmunizationEducation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      documentType: documentType ?? this.documentType,
      documentTypeElement: documentTypeElement ?? this.documentTypeElement,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      publicationDate: publicationDate ?? this.publicationDate,
      publicationDateElement:
          publicationDateElement ?? this.publicationDateElement,
      presentationDate: presentationDate ?? this.presentationDate,
      presentationDateElement:
          presentationDateElement ?? this.presentationDateElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationReaction] /// Categorical data indicating that an adverse event is associated in time to
/// an immunization.
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

  /// [date] /// Date of reaction to the immunization.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [detail] /// Details of the reaction.
  final Reference? detail;

  /// [reported] /// Self-reported indicator.
  final FhirBoolean? reported;
  final Element? reportedElement;
  @override
  ImmunizationReaction clone() => throw UnimplementedError();
  ImmunizationReaction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    Element? dateElement,
    Reference? detail,
    FhirBoolean? reported,
    Element? reportedElement,
  }) {
    return ImmunizationReaction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      detail: detail ?? this.detail,
      reported: reported ?? this.reported,
      reportedElement: reportedElement ?? this.reportedElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImmunizationProtocolApplied] /// The protocol (set of recommendations) being followed by the provider who
/// administered the dose.
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

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  final FhirString? series;
  final Element? seriesElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  final Reference? authority;

  /// [targetDisease] /// The vaccine preventable disease the dose is being administered against.
  final List<CodeableConcept>? targetDisease;

  /// [doseNumberPositiveInt] /// Nominal position in a series.
  final FhirPositiveInt doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position in a series.
  final FhirString doseNumberString;
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;
  @override
  ImmunizationProtocolApplied clone() => throw UnimplementedError();
  ImmunizationProtocolApplied copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Element? seriesElement,
    Reference? authority,
    List<CodeableConcept>? targetDisease,
    FhirPositiveInt? doseNumberPositiveInt,
    Element? doseNumberPositiveIntElement,
    FhirString? doseNumberString,
    Element? doseNumberStringElement,
    FhirPositiveInt? seriesDosesPositiveInt,
    Element? seriesDosesPositiveIntElement,
    FhirString? seriesDosesString,
    Element? seriesDosesStringElement,
  }) {
    return ImmunizationProtocolApplied(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      seriesElement: seriesElement ?? this.seriesElement,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberPositiveIntElement:
          doseNumberPositiveIntElement ?? this.doseNumberPositiveIntElement,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      doseNumberStringElement:
          doseNumberStringElement ?? this.doseNumberStringElement,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesPositiveIntElement:
          seriesDosesPositiveIntElement ?? this.seriesDosesPositiveIntElement,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      seriesDosesStringElement:
          seriesDosesStringElement ?? this.seriesDosesStringElement,
    );
  }
}
