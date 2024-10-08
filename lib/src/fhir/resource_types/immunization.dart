import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'immunization.g.dart';

/// [Immunization] /// Describes the event of a patient being administered a vaccine or a record
/// of an immunization as reported by a patient, a clinician or another party.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.Immunization,
            fhirType: 'Immunization');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this immunization record.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current status of the immunization event.
  @JsonKey(name: 'status')
  final ImmunizationStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Indicates the reason the immunization event was not performed.
  @JsonKey(name: 'statusReason')
  final ImmunizationStatusReasonCodes? statusReason;

  /// [vaccineCode] /// Vaccine that was administered or was to be administered.
  @JsonKey(name: 'vaccineCode')
  final CodeableConcept vaccineCode;

  /// [patient] /// The patient who either received or did not receive the immunization.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [encounter] /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [occurrenceDateTime] /// Date vaccine administered or was to be administered.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrenceString] /// Date vaccine administered or was to be administered.
  @JsonKey(name: 'occurrenceString')
  final FhirString occurrenceString;
  @JsonKey(name: '_occurrenceString')
  final Element? occurrenceStringElement;

  /// [recorded] /// The date the occurrence of the immunization was first captured in the
  /// record - potentially significantly after the occurrence of the event.
  @JsonKey(name: 'recorded')
  final FhirDateTime? recorded;
  @JsonKey(name: '_recorded')
  final Element? recordedElement;

  /// [primarySource] /// An indication that the content of the record is based on information from
  /// the person who administered the vaccine. This reflects the context under
  /// which the data was originally recorded.
  @JsonKey(name: 'primarySource')
  final FhirBoolean? primarySource;
  @JsonKey(name: '_primarySource')
  final Element? primarySourceElement;

  /// [reportOrigin] /// The source of the data when the report of the immunization event is not
  /// based on information from the person who administered the vaccine.
  @JsonKey(name: 'reportOrigin')
  final ImmunizationOriginCodes? reportOrigin;

  /// [location] /// The service delivery location where the vaccine administration occurred.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [manufacturer] /// Name of vaccine manufacturer.
  @JsonKey(name: 'manufacturer')
  final Reference? manufacturer;

  /// [lotNumber] /// Lot number of the vaccine product.
  @JsonKey(name: 'lotNumber')
  final FhirString? lotNumber;
  @JsonKey(name: '_lotNumber')
  final Element? lotNumberElement;

  /// [expirationDate] /// Date vaccine batch expires.
  @JsonKey(name: 'expirationDate')
  final FhirDate? expirationDate;
  @JsonKey(name: '_expirationDate')
  final Element? expirationDateElement;

  /// [site] /// Body site where vaccine was administered.
  @JsonKey(name: 'site')
  final CodesForImmunizationSiteOfAdministration? site;

  /// [route] /// The path by which the vaccine product is taken into the body.
  @JsonKey(name: 'route')
  final ImmunizationRouteCodes? route;

  /// [doseQuantity] /// The quantity of vaccine product that was administered.
  @JsonKey(name: 'doseQuantity')
  final Quantity? doseQuantity;

  /// [performer] /// Indicates who performed the immunization event.
  @JsonKey(name: 'performer')
  final List<ImmunizationPerformer>? performer;

  /// [note] /// Extra information about the immunization that is not conveyed by the other
  /// attributes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [reasonCode] /// Reasons why the vaccine was administered.
  @JsonKey(name: 'reasonCode')
  final List<ImmunizationReasonCodes>? reasonCode;

  /// [reasonReference] /// Condition, Observation or DiagnosticReport that supports why the
  /// immunization was administered.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [isSubpotent] /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  @JsonKey(name: 'isSubpotent')
  final FhirBoolean? isSubpotent;
  @JsonKey(name: '_isSubpotent')
  final Element? isSubpotentElement;

  /// [subpotentReason] /// Reason why a dose is considered to be subpotent.
  @JsonKey(name: 'subpotentReason')
  final List<ImmunizationSubpotentReason>? subpotentReason;

  /// [education] /// Educational material presented to the patient (or guardian) at the time of
  /// vaccine administration.
  @JsonKey(name: 'education')
  final List<ImmunizationEducation>? education;

  /// [programEligibility] /// Indicates a patient's eligibility for a funding program.
  @JsonKey(name: 'programEligibility')
  final List<ImmunizationProgramEligibility>? programEligibility;

  /// [fundingSource] /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be eligible
  /// for a publically purchased vaccine but due to inventory issues, vaccine
  /// purchased with private funds was actually administered).
  @JsonKey(name: 'fundingSource')
  final ImmunizationFundingSource? fundingSource;

  /// [reaction] /// Categorical data indicating that an adverse event is associated in time to
  /// an immunization.
  @JsonKey(name: 'reaction')
  final List<ImmunizationReaction>? reaction;

  /// [protocolApplied] /// The protocol (set of recommendations) being followed by the provider who
  /// administered the dose.
  @JsonKey(name: 'protocolApplied')
  final List<ImmunizationProtocolApplied>? protocolApplied;
  factory Immunization.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationToJson(this);

  @override
  Immunization clone() => throw UnimplementedError();
  @override
  Immunization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImmunizationStatusCodes? status,
    Element? statusElement,
    ImmunizationStatusReasonCodes? statusReason,
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
    ImmunizationOriginCodes? reportOrigin,
    Reference? location,
    Reference? manufacturer,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirDate? expirationDate,
    Element? expirationDateElement,
    CodesForImmunizationSiteOfAdministration? site,
    ImmunizationRouteCodes? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<ImmunizationReasonCodes>? reasonCode,
    List<Reference>? reasonReference,
    FhirBoolean? isSubpotent,
    Element? isSubpotentElement,
    List<ImmunizationSubpotentReason>? subpotentReason,
    List<ImmunizationEducation>? education,
    List<ImmunizationProgramEligibility>? programEligibility,
    ImmunizationFundingSource? fundingSource,
    List<ImmunizationReaction>? reaction,
    List<ImmunizationProtocolApplied>? protocolApplied,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Immunization.fromYaml(dynamic yaml) => yaml is String
      ? Immunization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Immunization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Immunization cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Immunization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Immunization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationPerformer] /// Indicates who performed the immunization event.
@JsonSerializable()
class ImmunizationPerformer extends BackboneElement {
  ImmunizationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationPerformer');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Describes the type of performance (e.g. ordering provider, administering
  /// provider, etc.).
  @JsonKey(name: 'function')
  final ImmunizationFunctionCodes? function_;

  /// [actor] /// The practitioner or organization who performed the action.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory ImmunizationPerformer.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationPerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationPerformerToJson(this);

  @override
  ImmunizationPerformer clone() => throw UnimplementedError();
  @override
  ImmunizationPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ImmunizationFunctionCodes? function_,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationPerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationEducation] /// Educational material presented to the patient (or guardian) at the time of
/// vaccine administration.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationEducation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [documentType] /// Identifier of the material presented to the patient.
  @JsonKey(name: 'documentType')
  final FhirString? documentType;
  @JsonKey(name: '_documentType')
  final Element? documentTypeElement;

  /// [reference] /// Reference pointer to the educational material given to the patient if the
  /// information was on line.
  @JsonKey(name: 'reference')
  final FhirUri? reference;
  @JsonKey(name: '_reference')
  final Element? referenceElement;

  /// [publicationDate] /// Date the educational material was published.
  @JsonKey(name: 'publicationDate')
  final FhirDateTime? publicationDate;
  @JsonKey(name: '_publicationDate')
  final Element? publicationDateElement;

  /// [presentationDate] /// Date the educational material was given to the patient.
  @JsonKey(name: 'presentationDate')
  final FhirDateTime? presentationDate;
  @JsonKey(name: '_presentationDate')
  final Element? presentationDateElement;
  factory ImmunizationEducation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationEducationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationEducationToJson(this);

  @override
  ImmunizationEducation clone() => throw UnimplementedError();
  @override
  ImmunizationEducation copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationEducation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEducation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationEducation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationEducation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationEducation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEducation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationReaction] /// Categorical data indicating that an adverse event is associated in time to
/// an immunization.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationReaction');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date of reaction to the immunization.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [detail] /// Details of the reaction.
  @JsonKey(name: 'detail')
  final Reference? detail;

  /// [reported] /// Self-reported indicator.
  @JsonKey(name: 'reported')
  final FhirBoolean? reported;
  @JsonKey(name: '_reported')
  final Element? reportedElement;
  factory ImmunizationReaction.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationReactionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationReactionToJson(this);

  @override
  ImmunizationReaction clone() => throw UnimplementedError();
  @override
  ImmunizationReaction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    Element? dateElement,
    Reference? detail,
    FhirBoolean? reported,
    Element? reportedElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationReaction.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationReaction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImmunizationProtocolApplied] /// The protocol (set of recommendations) being followed by the provider who
/// administered the dose.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ImmunizationProtocolApplied');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [series] /// One possible path to achieve presumed immunity against a disease - within
  /// the context of an authority.
  @JsonKey(name: 'series')
  final FhirString? series;
  @JsonKey(name: '_series')
  final Element? seriesElement;

  /// [authority] /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  @JsonKey(name: 'authority')
  final Reference? authority;

  /// [targetDisease] /// The vaccine preventable disease the dose is being administered against.
  @JsonKey(name: 'targetDisease')
  final List<ImmunizationTargetDiseaseCodes>? targetDisease;

  /// [doseNumberPositiveInt] /// Nominal position in a series.
  @JsonKey(name: 'doseNumberPositiveInt')
  final FhirPositiveInt doseNumberPositiveInt;
  @JsonKey(name: '_doseNumberPositiveInt')
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position in a series.
  @JsonKey(name: 'doseNumberString')
  final FhirString doseNumberString;
  @JsonKey(name: '_doseNumberString')
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  @JsonKey(name: 'seriesDosesPositiveInt')
  final FhirPositiveInt? seriesDosesPositiveInt;
  @JsonKey(name: '_seriesDosesPositiveInt')
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  @JsonKey(name: 'seriesDosesString')
  final FhirString? seriesDosesString;
  @JsonKey(name: '_seriesDosesString')
  final Element? seriesDosesStringElement;
  factory ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationProtocolAppliedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImmunizationProtocolAppliedToJson(this);

  @override
  ImmunizationProtocolApplied clone() => throw UnimplementedError();
  @override
  ImmunizationProtocolApplied copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Element? seriesElement,
    Reference? authority,
    List<ImmunizationTargetDiseaseCodes>? targetDisease,
    FhirPositiveInt? doseNumberPositiveInt,
    Element? doseNumberPositiveIntElement,
    FhirString? doseNumberString,
    Element? doseNumberStringElement,
    FhirPositiveInt? seriesDosesPositiveInt,
    Element? seriesDosesPositiveIntElement,
    FhirString? seriesDosesString,
    Element? seriesDosesStringElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImmunizationProtocolApplied.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationProtocolApplied.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImmunizationProtocolApplied.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImmunizationProtocolApplied cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImmunizationProtocolApplied.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationProtocolApplied.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
