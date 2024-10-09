import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrenceString,
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
  }) : super(resourceType: R4ResourceType.Immunization);

  @override
  String get fhirType => 'Immunization';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current status of the immunization event.
  final ImmunizationStatusCodes status;
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
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrenceString] /// Date vaccine administered or was to be administered.
  final FhirString? occurrenceString;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    json['vaccineCode'] = vaccineCode.toJson();
    json['patient'] = patient.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.toJson();
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (occurrenceString?.value != null) {
      json['occurrenceString'] = occurrenceString!.toJson();
    }
    if (occurrenceStringElement != null) {
      json['_occurrenceString'] = occurrenceStringElement!.toJson();
    }
    if (recorded?.value != null) {
      json['recorded'] = recorded!.toJson();
    }
    if (recordedElement != null) {
      json['_recorded'] = recordedElement!.toJson();
    }
    if (primarySource?.value != null) {
      json['primarySource'] = primarySource!.toJson();
    }
    if (primarySourceElement != null) {
      json['_primarySource'] = primarySourceElement!.toJson();
    }
    if (reportOrigin != null) {
      json['reportOrigin'] = reportOrigin!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (manufacturer != null) {
      json['manufacturer'] = manufacturer!.toJson();
    }
    if (lotNumber?.value != null) {
      json['lotNumber'] = lotNumber!.toJson();
    }
    if (lotNumberElement != null) {
      json['_lotNumber'] = lotNumberElement!.toJson();
    }
    if (expirationDate?.value != null) {
      json['expirationDate'] = expirationDate!.toJson();
    }
    if (expirationDateElement != null) {
      json['_expirationDate'] = expirationDateElement!.toJson();
    }
    if (site != null) {
      json['site'] = site!.toJson();
    }
    if (route != null) {
      json['route'] = route!.toJson();
    }
    if (doseQuantity != null) {
      json['doseQuantity'] = doseQuantity!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!
          .map<dynamic>((ImmunizationPerformer v) => v.toJson())
          .toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (isSubpotent?.value != null) {
      json['isSubpotent'] = isSubpotent!.toJson();
    }
    if (isSubpotentElement != null) {
      json['_isSubpotent'] = isSubpotentElement!.toJson();
    }
    if (subpotentReason != null && subpotentReason!.isNotEmpty) {
      json['subpotentReason'] = subpotentReason!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (education != null && education!.isNotEmpty) {
      json['education'] = education!
          .map<dynamic>((ImmunizationEducation v) => v.toJson())
          .toList();
    }
    if (programEligibility != null && programEligibility!.isNotEmpty) {
      json['programEligibility'] = programEligibility!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (fundingSource != null) {
      json['fundingSource'] = fundingSource!.toJson();
    }
    if (reaction != null && reaction!.isNotEmpty) {
      json['reaction'] = reaction!
          .map<dynamic>((ImmunizationReaction v) => v.toJson())
          .toList();
    }
    if (protocolApplied != null && protocolApplied!.isNotEmpty) {
      json['protocolApplied'] = protocolApplied!
          .map<dynamic>((ImmunizationProtocolApplied v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory Immunization.fromJson(Map<String, dynamic> json) {
    return Immunization(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ImmunizationStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
      vaccineCode:
          CodeableConcept.fromJson(json['vaccineCode'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      occurrenceString: json['occurrenceString'] != null
          ? FhirString.fromJson(json['occurrenceString'])
          : null,
      occurrenceStringElement: json['_occurrenceString'] != null
          ? Element.fromJson(json['_occurrenceString'] as Map<String, dynamic>)
          : null,
      recorded: json['recorded'] != null
          ? FhirDateTime.fromJson(json['recorded'])
          : null,
      recordedElement: json['_recorded'] != null
          ? Element.fromJson(json['_recorded'] as Map<String, dynamic>)
          : null,
      primarySource: json['primarySource'] != null
          ? FhirBoolean.fromJson(json['primarySource'])
          : null,
      primarySourceElement: json['_primarySource'] != null
          ? Element.fromJson(json['_primarySource'] as Map<String, dynamic>)
          : null,
      reportOrigin: json['reportOrigin'] != null
          ? CodeableConcept.fromJson(
              json['reportOrigin'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(json['manufacturer'] as Map<String, dynamic>)
          : null,
      lotNumber: json['lotNumber'] != null
          ? FhirString.fromJson(json['lotNumber'])
          : null,
      lotNumberElement: json['_lotNumber'] != null
          ? Element.fromJson(json['_lotNumber'] as Map<String, dynamic>)
          : null,
      expirationDate: json['expirationDate'] != null
          ? FhirDate.fromJson(json['expirationDate'])
          : null,
      expirationDateElement: json['_expirationDate'] != null
          ? Element.fromJson(json['_expirationDate'] as Map<String, dynamic>)
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(json['site'] as Map<String, dynamic>)
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(json['route'] as Map<String, dynamic>)
          : null,
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ImmunizationPerformer>((dynamic v) =>
                  ImmunizationPerformer.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      isSubpotent: json['isSubpotent'] != null
          ? FhirBoolean.fromJson(json['isSubpotent'])
          : null,
      isSubpotentElement: json['_isSubpotent'] != null
          ? Element.fromJson(json['_isSubpotent'] as Map<String, dynamic>)
          : null,
      subpotentReason: json['subpotentReason'] != null
          ? (json['subpotentReason'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      education: json['education'] != null
          ? (json['education'] as List<dynamic>)
              .map<ImmunizationEducation>((dynamic v) =>
                  ImmunizationEducation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programEligibility: json['programEligibility'] != null
          ? (json['programEligibility'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      fundingSource: json['fundingSource'] != null
          ? CodeableConcept.fromJson(
              json['fundingSource'] as Map<String, dynamic>)
          : null,
      reaction: json['reaction'] != null
          ? (json['reaction'] as List<dynamic>)
              .map<ImmunizationReaction>((dynamic v) =>
                  ImmunizationReaction.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      protocolApplied: json['protocolApplied'] != null
          ? (json['protocolApplied'] as List<dynamic>)
              .map<ImmunizationProtocolApplied>((dynamic v) =>
                  ImmunizationProtocolApplied.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'ImmunizationPerformer';

  @Id()
  int dbId = 0;

  /// [function_] /// Describes the type of performance (e.g. ordering provider, administering
  /// provider, etc.).
  final CodeableConcept? function_;

  /// [actor] /// The practitioner or organization who performed the action.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (function_ != null) {
      json['function'] = function_!.toJson();
    }
    json['actor'] = actor.toJson();
    return json;
  }

  factory ImmunizationPerformer.fromJson(Map<String, dynamic> json) {
    return ImmunizationPerformer(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      function_: json['function'] != null
          ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>)
          : null,
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
    );
  }
  @override
  ImmunizationPerformer clone() => throw UnimplementedError();
  @override
  ImmunizationPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
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
  });

  @override
  String get fhirType => 'ImmunizationEducation';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (documentType?.value != null) {
      json['documentType'] = documentType!.toJson();
    }
    if (documentTypeElement != null) {
      json['_documentType'] = documentTypeElement!.toJson();
    }
    if (reference?.value != null) {
      json['reference'] = reference!.toJson();
    }
    if (referenceElement != null) {
      json['_reference'] = referenceElement!.toJson();
    }
    if (publicationDate?.value != null) {
      json['publicationDate'] = publicationDate!.toJson();
    }
    if (publicationDateElement != null) {
      json['_publicationDate'] = publicationDateElement!.toJson();
    }
    if (presentationDate?.value != null) {
      json['presentationDate'] = presentationDate!.toJson();
    }
    if (presentationDateElement != null) {
      json['_presentationDate'] = presentationDateElement!.toJson();
    }
    return json;
  }

  factory ImmunizationEducation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEducation(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      documentType: json['documentType'] != null
          ? FhirString.fromJson(json['documentType'])
          : null,
      documentTypeElement: json['_documentType'] != null
          ? Element.fromJson(json['_documentType'] as Map<String, dynamic>)
          : null,
      reference: json['reference'] != null
          ? FhirUri.fromJson(json['reference'])
          : null,
      referenceElement: json['_reference'] != null
          ? Element.fromJson(json['_reference'] as Map<String, dynamic>)
          : null,
      publicationDate: json['publicationDate'] != null
          ? FhirDateTime.fromJson(json['publicationDate'])
          : null,
      publicationDateElement: json['_publicationDate'] != null
          ? Element.fromJson(json['_publicationDate'] as Map<String, dynamic>)
          : null,
      presentationDate: json['presentationDate'] != null
          ? FhirDateTime.fromJson(json['presentationDate'])
          : null,
      presentationDateElement: json['_presentationDate'] != null
          ? Element.fromJson(json['_presentationDate'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'ImmunizationReaction';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (detail != null) {
      json['detail'] = detail!.toJson();
    }
    if (reported?.value != null) {
      json['reported'] = reported!.toJson();
    }
    if (reportedElement != null) {
      json['_reported'] = reportedElement!.toJson();
    }
    return json;
  }

  factory ImmunizationReaction.fromJson(Map<String, dynamic> json) {
    return ImmunizationReaction(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      detail: json['detail'] != null
          ? Reference.fromJson(json['detail'] as Map<String, dynamic>)
          : null,
      reported: json['reported'] != null
          ? FhirBoolean.fromJson(json['reported'])
          : null,
      reportedElement: json['_reported'] != null
          ? Element.fromJson(json['_reported'] as Map<String, dynamic>)
          : null,
    );
  }
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
class ImmunizationProtocolApplied extends BackboneElement {
  ImmunizationProtocolApplied({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.series,
    this.seriesElement,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.doseNumberPositiveIntElement,
    this.doseNumberString,
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
  });

  @override
  String get fhirType => 'ImmunizationProtocolApplied';

  @Id()
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
  final FhirPositiveInt? doseNumberPositiveInt;
  final Element? doseNumberPositiveIntElement;

  /// [doseNumberString] /// Nominal position in a series.
  final FhirString? doseNumberString;
  final Element? doseNumberStringElement;

  /// [seriesDosesPositiveInt] /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;
  final Element? seriesDosesPositiveIntElement;

  /// [seriesDosesString] /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  final Element? seriesDosesStringElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (series?.value != null) {
      json['series'] = series!.toJson();
    }
    if (seriesElement != null) {
      json['_series'] = seriesElement!.toJson();
    }
    if (authority != null) {
      json['authority'] = authority!.toJson();
    }
    if (targetDisease != null && targetDisease!.isNotEmpty) {
      json['targetDisease'] = targetDisease!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (doseNumberPositiveInt?.value != null) {
      json['doseNumberPositiveInt'] = doseNumberPositiveInt!.toJson();
    }
    if (doseNumberPositiveIntElement != null) {
      json['_doseNumberPositiveInt'] = doseNumberPositiveIntElement!.toJson();
    }
    if (doseNumberString?.value != null) {
      json['doseNumberString'] = doseNumberString!.toJson();
    }
    if (doseNumberStringElement != null) {
      json['_doseNumberString'] = doseNumberStringElement!.toJson();
    }
    if (seriesDosesPositiveInt?.value != null) {
      json['seriesDosesPositiveInt'] = seriesDosesPositiveInt!.toJson();
    }
    if (seriesDosesPositiveIntElement != null) {
      json['_seriesDosesPositiveInt'] = seriesDosesPositiveIntElement!.toJson();
    }
    if (seriesDosesString?.value != null) {
      json['seriesDosesString'] = seriesDosesString!.toJson();
    }
    if (seriesDosesStringElement != null) {
      json['_seriesDosesString'] = seriesDosesStringElement!.toJson();
    }
    return json;
  }

  factory ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) {
    return ImmunizationProtocolApplied(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      series:
          json['series'] != null ? FhirString.fromJson(json['series']) : null,
      seriesElement: json['_series'] != null
          ? Element.fromJson(json['_series'] as Map<String, dynamic>)
          : null,
      authority: json['authority'] != null
          ? Reference.fromJson(json['authority'] as Map<String, dynamic>)
          : null,
      targetDisease: json['targetDisease'] != null
          ? (json['targetDisease'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['doseNumberPositiveInt'])
          : null,
      doseNumberPositiveIntElement: json['_doseNumberPositiveInt'] != null
          ? Element.fromJson(
              json['_doseNumberPositiveInt'] as Map<String, dynamic>)
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson(json['doseNumberString'])
          : null,
      doseNumberStringElement: json['_doseNumberString'] != null
          ? Element.fromJson(json['_doseNumberString'] as Map<String, dynamic>)
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['seriesDosesPositiveInt'])
          : null,
      seriesDosesPositiveIntElement: json['_seriesDosesPositiveInt'] != null
          ? Element.fromJson(
              json['_seriesDosesPositiveInt'] as Map<String, dynamic>)
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson(json['seriesDosesString'])
          : null,
      seriesDosesStringElement: json['_seriesDosesString'] != null
          ? Element.fromJson(json['_seriesDosesString'] as Map<String, dynamic>)
          : null,
    );
  }
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
    List<CodeableConcept>? targetDisease,
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
