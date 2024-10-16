import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Immunization]
/// Describes the event of a patient being administered a vaccine or a
/// record of an immunization as reported by a patient, a clinician or
/// another party.
class Immunization extends DomainResource {
  /// Primary constructor for [Immunization]

  Immunization({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceString,
    this.recorded,
    this.primarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.expirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
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
  }) : super(
          resourceType: R4ResourceType.Immunization,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Immunization.fromJson(Map<String, dynamic> json) {
    return Immunization(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ImmunizationStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      vaccineCode: CodeableConcept.fromJson(
        json['vaccineCode'] as Map<String, dynamic>,
      ),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrenceString: json['occurrenceString'] != null
          ? FhirString.fromJson({
              'value': json['occurrenceString'],
              '_value': json['_occurrenceString'],
            })
          : null,
      recorded: json['recorded'] != null
          ? FhirDateTime.fromJson({
              'value': json['recorded'],
              '_value': json['_recorded'],
            })
          : null,
      primarySource: json['primarySource'] != null
          ? FhirBoolean.fromJson({
              'value': json['primarySource'],
              '_value': json['_primarySource'],
            })
          : null,
      reportOrigin: json['reportOrigin'] != null
          ? CodeableConcept.fromJson(
              json['reportOrigin'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(
              json['manufacturer'] as Map<String, dynamic>,
            )
          : null,
      lotNumber: json['lotNumber'] != null
          ? FhirString.fromJson({
              'value': json['lotNumber'],
              '_value': json['_lotNumber'],
            })
          : null,
      expirationDate: json['expirationDate'] != null
          ? FhirDate.fromJson({
              'value': json['expirationDate'],
              '_value': json['_expirationDate'],
            })
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(
              json['site'] as Map<String, dynamic>,
            )
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(
              json['route'] as Map<String, dynamic>,
            )
          : null,
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(
              json['doseQuantity'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ImmunizationPerformer>(
                (v) => ImmunizationPerformer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      isSubpotent: json['isSubpotent'] != null
          ? FhirBoolean.fromJson({
              'value': json['isSubpotent'],
              '_value': json['_isSubpotent'],
            })
          : null,
      subpotentReason: json['subpotentReason'] != null
          ? (json['subpotentReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      education: json['education'] != null
          ? (json['education'] as List<dynamic>)
              .map<ImmunizationEducation>(
                (v) => ImmunizationEducation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programEligibility: json['programEligibility'] != null
          ? (json['programEligibility'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      fundingSource: json['fundingSource'] != null
          ? CodeableConcept.fromJson(
              json['fundingSource'] as Map<String, dynamic>,
            )
          : null,
      reaction: json['reaction'] != null
          ? (json['reaction'] as List<dynamic>)
              .map<ImmunizationReaction>(
                (v) => ImmunizationReaction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      protocolApplied: json['protocolApplied'] != null
          ? (json['protocolApplied'] as List<dynamic>)
              .map<ImmunizationProtocolApplied>(
                (v) => ImmunizationProtocolApplied.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Immunization] from a [String]
  /// or [YamlMap] object
  factory Immunization.fromYaml(dynamic yaml) => yaml is String
      ? Immunization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Immunization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Immunization cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Immunization]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Immunization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Immunization.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Immunization';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current status of the immunization event.
  final ImmunizationStatusCodes status;

  /// [statusReason]
  /// Indicates the reason the immunization event was not performed.
  final CodeableConcept? statusReason;

  /// [vaccineCode]
  /// Vaccine that was administered or was to be administered.
  final CodeableConcept vaccineCode;

  /// [patient]
  /// The patient who either received or did not receive the immunization.
  final Reference patient;

  /// [encounter]
  /// The visit or admission or other contact between patient and health care
  /// provider the immunization was performed as part of.
  final Reference? encounter;

  /// [occurrenceDateTime]
  /// Date vaccine administered or was to be administered.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrenceString]
  /// Date vaccine administered or was to be administered.
  final FhirString? occurrenceString;

  /// [recorded]
  /// The date the occurrence of the immunization was first captured in the
  /// record - potentially significantly after the occurrence of the event.
  final FhirDateTime? recorded;

  /// [primarySource]
  /// An indication that the content of the record is based on information
  /// from the person who administered the vaccine. This reflects the context
  /// under which the data was originally recorded.
  final FhirBoolean? primarySource;

  /// [reportOrigin]
  /// The source of the data when the report of the immunization event is not
  /// based on information from the person who administered the vaccine.
  final CodeableConcept? reportOrigin;

  /// [location]
  /// The service delivery location where the vaccine administration
  /// occurred.
  final Reference? location;

  /// [manufacturer]
  /// Name of vaccine manufacturer.
  final Reference? manufacturer;

  /// [lotNumber]
  /// Lot number of the vaccine product.
  final FhirString? lotNumber;

  /// [expirationDate]
  /// Date vaccine batch expires.
  final FhirDate? expirationDate;

  /// [site]
  /// Body site where vaccine was administered.
  final CodeableConcept? site;

  /// [route]
  /// The path by which the vaccine product is taken into the body.
  final CodeableConcept? route;

  /// [doseQuantity]
  /// The quantity of vaccine product that was administered.
  final Quantity? doseQuantity;

  /// [performer]
  /// Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? performer;

  /// [note]
  /// Extra information about the immunization that is not conveyed by the
  /// other attributes.
  final List<Annotation>? note;

  /// [reasonCode]
  /// Reasons why the vaccine was administered.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition, Observation or DiagnosticReport that supports why the
  /// immunization was administered.
  final List<Reference>? reasonReference;

  /// [isSubpotent]
  /// Indication if a dose is considered to be subpotent. By default, a dose
  /// should be considered to be potent.
  final FhirBoolean? isSubpotent;

  /// [subpotentReason]
  /// Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? subpotentReason;

  /// [education]
  /// Educational material presented to the patient (or guardian) at the time
  /// of vaccine administration.
  final List<ImmunizationEducation>? education;

  /// [programEligibility]
  /// Indicates a patient's eligibility for a funding program.
  final List<CodeableConcept>? programEligibility;

  /// [fundingSource]
  /// Indicates the source of the vaccine actually administered. This may be
  /// different than the patient eligibility (e.g. the patient may be
  /// eligible for a publically purchased vaccine but due to inventory
  /// issues, vaccine purchased with private funds was actually
  /// administered).
  final CodeableConcept? fundingSource;

  /// [reaction]
  /// Categorical data indicating that an adverse event is associated in time
  /// to an immunization.
  final List<ImmunizationReaction>? reaction;

  /// [protocolApplied]
  /// The protocol (set of recommendations) being followed by the provider
  /// who administered the dose.
  final List<ImmunizationProtocolApplied>? protocolApplied;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (statusReason != null) {
      final fieldJson10 = statusReason!.toJson();
      json['statusReason'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_statusReason'] = fieldJson10['_value'];
      }
    }

    final fieldJson11 = vaccineCode.toJson();
    json['vaccineCode'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_vaccineCode'] = fieldJson11['_value'];
    }

    final fieldJson12 = patient.toJson();
    json['patient'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_patient'] = fieldJson12['_value'];
    }

    if (encounter != null) {
      final fieldJson13 = encounter!.toJson();
      json['encounter'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_encounter'] = fieldJson13['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson14 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson14['_value'];
      }
    }

    if (occurrenceString != null) {
      final fieldJson15 = occurrenceString!.toJson();
      json['occurrenceString'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_occurrenceString'] = fieldJson15['_value'];
      }
    }

    if (recorded != null) {
      final fieldJson16 = recorded!.toJson();
      json['recorded'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_recorded'] = fieldJson16['_value'];
      }
    }

    if (primarySource != null) {
      final fieldJson17 = primarySource!.toJson();
      json['primarySource'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_primarySource'] = fieldJson17['_value'];
      }
    }

    if (reportOrigin != null) {
      final fieldJson18 = reportOrigin!.toJson();
      json['reportOrigin'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_reportOrigin'] = fieldJson18['_value'];
      }
    }

    if (location != null) {
      final fieldJson19 = location!.toJson();
      json['location'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_location'] = fieldJson19['_value'];
      }
    }

    if (manufacturer != null) {
      final fieldJson20 = manufacturer!.toJson();
      json['manufacturer'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_manufacturer'] = fieldJson20['_value'];
      }
    }

    if (lotNumber != null) {
      final fieldJson21 = lotNumber!.toJson();
      json['lotNumber'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_lotNumber'] = fieldJson21['_value'];
      }
    }

    if (expirationDate != null) {
      final fieldJson22 = expirationDate!.toJson();
      json['expirationDate'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_expirationDate'] = fieldJson22['_value'];
      }
    }

    if (site != null) {
      final fieldJson23 = site!.toJson();
      json['site'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_site'] = fieldJson23['_value'];
      }
    }

    if (route != null) {
      final fieldJson24 = route!.toJson();
      json['route'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_route'] = fieldJson24['_value'];
      }
    }

    if (doseQuantity != null) {
      final fieldJson25 = doseQuantity!.toJson();
      json['doseQuantity'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_doseQuantity'] = fieldJson25['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson26 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson27 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson28 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson29 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (isSubpotent != null) {
      final fieldJson30 = isSubpotent!.toJson();
      json['isSubpotent'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_isSubpotent'] = fieldJson30['_value'];
      }
    }

    if (subpotentReason != null && subpotentReason!.isNotEmpty) {
      final fieldJson31 = subpotentReason!.map((e) => e.toJson()).toList();
      json['subpotentReason'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_subpotentReason'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (education != null && education!.isNotEmpty) {
      final fieldJson32 = education!.map((e) => e.toJson()).toList();
      json['education'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_education'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (programEligibility != null && programEligibility!.isNotEmpty) {
      final fieldJson33 = programEligibility!.map((e) => e.toJson()).toList();
      json['programEligibility'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_programEligibility'] =
            fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (fundingSource != null) {
      final fieldJson34 = fundingSource!.toJson();
      json['fundingSource'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_fundingSource'] = fieldJson34['_value'];
      }
    }

    if (reaction != null && reaction!.isNotEmpty) {
      final fieldJson35 = reaction!.map((e) => e.toJson()).toList();
      json['reaction'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_reaction'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (protocolApplied != null && protocolApplied!.isNotEmpty) {
      final fieldJson36 = protocolApplied!.map((e) => e.toJson()).toList();
      json['protocolApplied'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_protocolApplied'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Immunization clone() => throw UnimplementedError();
  @override
  Immunization copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImmunizationStatusCodes? status,
    CodeableConcept? statusReason,
    CodeableConcept? vaccineCode,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    FhirString? occurrenceString,
    FhirDateTime? recorded,
    FhirBoolean? primarySource,
    CodeableConcept? reportOrigin,
    Reference? location,
    Reference? manufacturer,
    FhirString? lotNumber,
    FhirDate? expirationDate,
    CodeableConcept? site,
    CodeableConcept? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirBoolean? isSubpotent,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      vaccineCode: vaccineCode ?? this.vaccineCode,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceString: occurrenceString ?? this.occurrenceString,
      recorded: recorded ?? this.recorded,
      primarySource: primarySource ?? this.primarySource,
      reportOrigin: reportOrigin ?? this.reportOrigin,
      location: location ?? this.location,
      manufacturer: manufacturer ?? this.manufacturer,
      lotNumber: lotNumber ?? this.lotNumber,
      expirationDate: expirationDate ?? this.expirationDate,
      site: site ?? this.site,
      route: route ?? this.route,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      performer: performer ?? this.performer,
      note: note ?? this.note,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      isSubpotent: isSubpotent ?? this.isSubpotent,
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
}

/// [ImmunizationPerformer]
/// Indicates who performed the immunization event.
class ImmunizationPerformer extends BackboneElement {
  /// Primary constructor for [ImmunizationPerformer]

  ImmunizationPerformer({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationPerformer.fromJson(Map<String, dynamic> json) {
    return ImmunizationPerformer(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      function_: json['function'] != null
          ? CodeableConcept.fromJson(
              json['function'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ImmunizationPerformer] from a [String]
  /// or [YamlMap] object
  factory ImmunizationPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationPerformer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationPerformer';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [function_]
  /// Describes the type of performance (e.g. ordering provider,
  /// administering provider, etc.).
  final CodeableConcept? function_;

  /// [actor]
  /// The practitioner or organization who performed the action.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (function_ != null) {
      final fieldJson3 = function_!.toJson();
      json['function'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_function'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = actor.toJson();
    json['actor'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_actor'] = fieldJson4['_value'];
    }

    return json;
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
}

/// [ImmunizationEducation]
/// Educational material presented to the patient (or guardian) at the time
/// of vaccine administration.
class ImmunizationEducation extends BackboneElement {
  /// Primary constructor for [ImmunizationEducation]

  ImmunizationEducation({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.documentType,
    this.reference,
    this.publicationDate,
    this.presentationDate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEducation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEducation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      documentType: json['documentType'] != null
          ? FhirString.fromJson({
              'value': json['documentType'],
              '_value': json['_documentType'],
            })
          : null,
      reference: json['reference'] != null
          ? FhirUri.fromJson({
              'value': json['reference'],
              '_value': json['_reference'],
            })
          : null,
      publicationDate: json['publicationDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['publicationDate'],
              '_value': json['_publicationDate'],
            })
          : null,
      presentationDate: json['presentationDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['presentationDate'],
              '_value': json['_presentationDate'],
            })
          : null,
    );
  }

  /// Deserialize [ImmunizationEducation] from a [String]
  /// or [YamlMap] object
  factory ImmunizationEducation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEducation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationEducation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationEducation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationEducation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEducation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEducation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEducation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [documentType]
  /// Identifier of the material presented to the patient.
  final FhirString? documentType;

  /// [reference]
  /// Reference pointer to the educational material given to the patient if
  /// the information was on line.
  final FhirUri? reference;

  /// [publicationDate]
  /// Date the educational material was published.
  final FhirDateTime? publicationDate;

  /// [presentationDate]
  /// Date the educational material was given to the patient.
  final FhirDateTime? presentationDate;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (documentType != null) {
      final fieldJson3 = documentType!.toJson();
      json['documentType'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_documentType'] = fieldJson3['_value'];
      }
    }

    if (reference != null) {
      final fieldJson4 = reference!.toJson();
      json['reference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_reference'] = fieldJson4['_value'];
      }
    }

    if (publicationDate != null) {
      final fieldJson5 = publicationDate!.toJson();
      json['publicationDate'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_publicationDate'] = fieldJson5['_value'];
      }
    }

    if (presentationDate != null) {
      final fieldJson6 = presentationDate!.toJson();
      json['presentationDate'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_presentationDate'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  ImmunizationEducation clone() => throw UnimplementedError();
  @override
  ImmunizationEducation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? documentType,
    FhirUri? reference,
    FhirDateTime? publicationDate,
    FhirDateTime? presentationDate,
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
      reference: reference ?? this.reference,
      publicationDate: publicationDate ?? this.publicationDate,
      presentationDate: presentationDate ?? this.presentationDate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImmunizationReaction]
/// Categorical data indicating that an adverse event is associated in time
/// to an immunization.
class ImmunizationReaction extends BackboneElement {
  /// Primary constructor for [ImmunizationReaction]

  ImmunizationReaction({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.date,
    this.detail,
    this.reported,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationReaction.fromJson(Map<String, dynamic> json) {
    return ImmunizationReaction(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      detail: json['detail'] != null
          ? Reference.fromJson(
              json['detail'] as Map<String, dynamic>,
            )
          : null,
      reported: json['reported'] != null
          ? FhirBoolean.fromJson({
              'value': json['reported'],
              '_value': json['_reported'],
            })
          : null,
    );
  }

  /// Deserialize [ImmunizationReaction] from a [String]
  /// or [YamlMap] object
  factory ImmunizationReaction.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationReaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationReaction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationReaction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationReaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationReaction';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [date]
  /// Date of reaction to the immunization.
  final FhirDateTime? date;

  /// [detail]
  /// Details of the reaction.
  final Reference? detail;

  /// [reported]
  /// Self-reported indicator.
  final FhirBoolean? reported;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (date != null) {
      final fieldJson3 = date!.toJson();
      json['date'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_date'] = fieldJson3['_value'];
      }
    }

    if (detail != null) {
      final fieldJson4 = detail!.toJson();
      json['detail'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_detail'] = fieldJson4['_value'];
      }
    }

    if (reported != null) {
      final fieldJson5 = reported!.toJson();
      json['reported'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_reported'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  ImmunizationReaction clone() => throw UnimplementedError();
  @override
  ImmunizationReaction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    Reference? detail,
    FhirBoolean? reported,
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
      detail: detail ?? this.detail,
      reported: reported ?? this.reported,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImmunizationProtocolApplied]
/// The protocol (set of recommendations) being followed by the provider
/// who administered the dose.
class ImmunizationProtocolApplied extends BackboneElement {
  /// Primary constructor for [ImmunizationProtocolApplied]

  ImmunizationProtocolApplied({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) {
    return ImmunizationProtocolApplied(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      series: json['series'] != null
          ? FhirString.fromJson({
              'value': json['series'],
              '_value': json['_series'],
            })
          : null,
      authority: json['authority'] != null
          ? Reference.fromJson(
              json['authority'] as Map<String, dynamic>,
            )
          : null,
      targetDisease: json['targetDisease'] != null
          ? (json['targetDisease'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['doseNumberPositiveInt'],
              '_value': json['_doseNumberPositiveInt'],
            })
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson({
              'value': json['doseNumberString'],
              '_value': json['_doseNumberString'],
            })
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['seriesDosesPositiveInt'],
              '_value': json['_seriesDosesPositiveInt'],
            })
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson({
              'value': json['seriesDosesString'],
              '_value': json['_seriesDosesString'],
            })
          : null,
    );
  }

  /// Deserialize [ImmunizationProtocolApplied] from a [String]
  /// or [YamlMap] object
  factory ImmunizationProtocolApplied.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationProtocolApplied.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationProtocolApplied.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationProtocolApplied cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationProtocolApplied]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationProtocolApplied.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationProtocolApplied.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationProtocolApplied';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP) that is
  /// being followed.
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being administered against.
  final List<CodeableConcept>? targetDisease;

  /// [doseNumberPositiveInt]
  /// Nominal position in a series.
  final FhirPositiveInt? doseNumberPositiveInt;

  /// [doseNumberString]
  /// Nominal position in a series.
  final FhirString? doseNumberString;

  /// [seriesDosesPositiveInt]
  /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;

  /// [seriesDosesString]
  /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (series != null) {
      final fieldJson3 = series!.toJson();
      json['series'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_series'] = fieldJson3['_value'];
      }
    }

    if (authority != null) {
      final fieldJson4 = authority!.toJson();
      json['authority'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_authority'] = fieldJson4['_value'];
      }
    }

    if (targetDisease != null && targetDisease!.isNotEmpty) {
      final fieldJson5 = targetDisease!.map((e) => e.toJson()).toList();
      json['targetDisease'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_targetDisease'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (doseNumberPositiveInt != null) {
      final fieldJson6 = doseNumberPositiveInt!.toJson();
      json['doseNumberPositiveInt'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_doseNumberPositiveInt'] = fieldJson6['_value'];
      }
    }

    if (doseNumberString != null) {
      final fieldJson7 = doseNumberString!.toJson();
      json['doseNumberString'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_doseNumberString'] = fieldJson7['_value'];
      }
    }

    if (seriesDosesPositiveInt != null) {
      final fieldJson8 = seriesDosesPositiveInt!.toJson();
      json['seriesDosesPositiveInt'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_seriesDosesPositiveInt'] = fieldJson8['_value'];
      }
    }

    if (seriesDosesString != null) {
      final fieldJson9 = seriesDosesString!.toJson();
      json['seriesDosesString'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_seriesDosesString'] = fieldJson9['_value'];
      }
    }

    return json;
  }

  @override
  ImmunizationProtocolApplied clone() => throw UnimplementedError();
  @override
  ImmunizationProtocolApplied copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Reference? authority,
    List<CodeableConcept>? targetDisease,
    FhirPositiveInt? doseNumberPositiveInt,
    FhirString? doseNumberString,
    FhirPositiveInt? seriesDosesPositiveInt,
    FhirString? seriesDosesString,
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
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
