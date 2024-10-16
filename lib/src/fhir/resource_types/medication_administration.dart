import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MedicationAdministration]
/// Describes the event of a patient consuming or otherwise being
/// administered a medication. This may be as simple as swallowing a tablet
/// or it may be a long running infusion. Related resources tie this event
/// to the authorizing prescription, and the specific encounter between
/// patient and health care practitioner.
class MedicationAdministration extends DomainResource {
  /// Primary constructor for [MedicationAdministration]

  MedicationAdministration({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiates,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MedicationAdministration,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministration.fromJson(Map<String, dynamic> json) {
    return MedicationAdministration(
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
      instantiates: parsePrimitiveList<FhirUri>(
          json['instantiates'] as List<dynamic>?,
          json['_instantiates'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: MedicationAdministrationStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? (json['statusReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['medicationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      context: json['context'] != null
          ? Reference.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['effectiveDateTime'],
              '_value': json['_effectiveDateTime'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<MedicationAdministrationPerformer>(
                (v) => MedicationAdministrationPerformer.fromJson(
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
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      device: json['device'] != null
          ? (json['device'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
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
      dosage: json['dosage'] != null
          ? MedicationAdministrationDosage.fromJson(
              json['dosage'] as Map<String, dynamic>,
            )
          : null,
      eventHistory: json['eventHistory'] != null
          ? (json['eventHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MedicationAdministration] from a [String]
  /// or [YamlMap] object
  factory MedicationAdministration.fromYaml(dynamic yaml) => yaml is String
      ? MedicationAdministration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationAdministration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationAdministration cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministration';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers associated with this Medication Administration that are
  /// defined by business processes and/or used to refer to it when a direct
  /// URL reference to the resource itself is not appropriate. They are
  /// business identifiers assigned to this resource by the performer or
  /// other systems and remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiates]
  /// A protocol, guideline, orderset, or other definition that was adhered
  /// to in whole or in part by this event.
  final List<FhirUri>? instantiates;

  /// [partOf]
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// [status]
  /// Will generally be set to show that the administration has been
  /// completed. For some long running administrations such as infusions, it
  /// is possible for an administration to be started but not completed or it
  /// may be paused while some other process is under way.
  final MedicationAdministrationStatusCodes status;

  /// [statusReason]
  /// A code indicating why the administration was not performed.
  final List<CodeableConcept>? statusReason;

  /// [category]
  /// Indicates where the medication is expected to be consumed or
  /// administered.
  final CodeableConcept? category;

  /// [medicationCodeableConcept]
  /// Identifies the medication that was administered. This is either a link
  /// to a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final CodeableConcept? medicationCodeableConcept;

  /// [medicationReference]
  /// Identifies the medication that was administered. This is either a link
  /// to a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final Reference? medicationReference;

  /// [subject]
  /// The person or animal or group receiving the medication.
  final Reference subject;

  /// [context]
  /// The visit, admission, or other contact between patient and health care
  /// provider during which the medication administration was performed.
  final Reference? context;

  /// [supportingInformation]
  /// Additional information (for example, patient height and weight) that
  /// supports the administration of the medication.
  final List<Reference>? supportingInformation;

  /// [effectiveDateTime]
  /// A specific date/time or interval of time during which the
  /// administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a
  /// tablet the use of dateTime is more appropriate.
  final FhirDateTime? effectiveDateTime;

  /// [effectivePeriod]
  /// A specific date/time or interval of time during which the
  /// administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a
  /// tablet the use of dateTime is more appropriate.
  final Period? effectivePeriod;

  /// [performer]
  /// Indicates who or what performed the medication administration and how
  /// they were involved.
  final List<MedicationAdministrationPerformer>? performer;

  /// [reasonCode]
  /// A code indicating why the medication was given.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Condition or observation that supports why the medication was
  /// administered.
  final List<Reference>? reasonReference;

  /// [request]
  /// The original request, instruction or authority to perform the
  /// administration.
  final Reference? request;

  /// [device]
  /// The device used in administering the medication to the patient. For
  /// example, a particular infusion pump.
  final List<Reference>? device;

  /// [note]
  /// Extra information about the medication administration that is not
  /// conveyed by the other attributes.
  final List<Annotation>? note;

  /// [dosage]
  /// Describes the medication dosage information details e.g. dose, rate,
  /// site, route, etc.
  final MedicationAdministrationDosage? dosage;

  /// [eventHistory]
  /// A summary of the events of interest that have occurred, such as when
  /// the administration was verified.
  final List<Reference>? eventHistory;
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

    if (instantiates != null && instantiates!.isNotEmpty) {
      final fieldJson9 = instantiates!.map((e) => e.toJson()).toList();
      json['instantiates'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiates'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson10 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (statusReason != null && statusReason!.isNotEmpty) {
      final fieldJson12 = statusReason!.map((e) => e.toJson()).toList();
      json['statusReason'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_statusReason'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (category != null) {
      final fieldJson13 = category!.toJson();
      json['category'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_category'] = fieldJson13['_value'];
      }
    }

    if (medicationCodeableConcept != null) {
      final fieldJson14 = medicationCodeableConcept!.toJson();
      json['medicationCodeableConcept'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_medicationCodeableConcept'] = fieldJson14['_value'];
      }
    }

    if (medicationReference != null) {
      final fieldJson15 = medicationReference!.toJson();
      json['medicationReference'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_medicationReference'] = fieldJson15['_value'];
      }
    }

    final fieldJson16 = subject.toJson();
    json['subject'] = fieldJson16['value'];
    if (fieldJson16['_value'] != null) {
      json['_subject'] = fieldJson16['_value'];
    }

    if (context != null) {
      final fieldJson17 = context!.toJson();
      json['context'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_context'] = fieldJson17['_value'];
      }
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      final fieldJson18 =
          supportingInformation!.map((e) => e.toJson()).toList();
      json['supportingInformation'] =
          fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_supportingInformation'] =
            fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (effectiveDateTime != null) {
      final fieldJson19 = effectiveDateTime!.toJson();
      json['effectiveDateTime'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_effectiveDateTime'] = fieldJson19['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson20 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_effectivePeriod'] = fieldJson20['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson21 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson22 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson23 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (request != null) {
      final fieldJson24 = request!.toJson();
      json['request'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_request'] = fieldJson24['_value'];
      }
    }

    if (device != null && device!.isNotEmpty) {
      final fieldJson25 = device!.map((e) => e.toJson()).toList();
      json['device'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_device'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson26 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (dosage != null) {
      final fieldJson27 = dosage!.toJson();
      json['dosage'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_dosage'] = fieldJson27['_value'];
      }
    }

    if (eventHistory != null && eventHistory!.isNotEmpty) {
      final fieldJson28 = eventHistory!.map((e) => e.toJson()).toList();
      json['eventHistory'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_eventHistory'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  MedicationAdministration clone() => throw UnimplementedError();
  @override
  MedicationAdministration copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirUri>? instantiates,
    List<Reference>? partOf,
    MedicationAdministrationStatusCodes? status,
    List<CodeableConcept>? statusReason,
    CodeableConcept? category,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
    List<MedicationAdministrationPerformer>? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? request,
    List<Reference>? device,
    List<Annotation>? note,
    MedicationAdministrationDosage? dosage,
    List<Reference>? eventHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationAdministration(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiates: instantiates ?? this.instantiates,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      request: request ?? this.request,
      device: device ?? this.device,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
      eventHistory: eventHistory ?? this.eventHistory,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationAdministrationPerformer]
/// Indicates who or what performed the medication administration and how
/// they were involved.
class MedicationAdministrationPerformer extends BackboneElement {
  /// Primary constructor for [MedicationAdministrationPerformer]

  MedicationAdministrationPerformer({
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
  factory MedicationAdministrationPerformer.fromJson(
      Map<String, dynamic> json) {
    return MedicationAdministrationPerformer(
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

  /// Deserialize [MedicationAdministrationPerformer] from a [String]
  /// or [YamlMap] object
  factory MedicationAdministrationPerformer.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationAdministrationPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationAdministrationPerformer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationAdministrationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministrationPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationPerformer';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the
  /// medication administration.
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what performed the medication administration.
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
  MedicationAdministrationPerformer clone() => throw UnimplementedError();
  @override
  MedicationAdministrationPerformer copyWith({
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
    return MedicationAdministrationPerformer(
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

/// [MedicationAdministrationDosage]
/// Describes the medication dosage information details e.g. dose, rate,
/// site, route, etc.
class MedicationAdministrationDosage extends BackboneElement {
  /// Primary constructor for [MedicationAdministrationDosage]

  MedicationAdministrationDosage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.text,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) {
    return MedicationAdministrationDosage(
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
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
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
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      dose: json['dose'] != null
          ? Quantity.fromJson(
              json['dose'] as Map<String, dynamic>,
            )
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(
              json['rateRatio'] as Map<String, dynamic>,
            )
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(
              json['rateQuantity'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationAdministrationDosage] from a [String]
  /// or [YamlMap] object
  factory MedicationAdministrationDosage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationAdministrationDosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationAdministrationDosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationAdministrationDosage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationAdministrationDosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationDosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationAdministrationDosage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationAdministrationDosage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [text]
  /// Free text dosage can be used for cases where the dosage administered is
  /// too complex to code. When coded dosage is present, the free text dosage
  /// may still be present for display to humans. The dosage instructions
  /// should reflect the dosage of the medication that was administered.
  final FhirString? text;

  /// [site]
  /// A coded specification of the anatomic site where the medication first
  /// entered the body. For example, "left arm".
  final CodeableConcept? site;

  /// [route]
  /// A code specifying the route or physiological path of administration of
  /// a therapeutic agent into or onto the patient. For example, topical,
  /// intravenous, etc.
  final CodeableConcept? route;

  /// [method]
  /// A coded value indicating the method by which the medication is intended
  /// to be or was introduced into or on the body. This attribute will most
  /// often NOT be populated. It is most commonly used for injections. For
  /// example, Slow Push, Deep IV.
  final CodeableConcept? method;

  /// [dose]
  /// The amount of the medication given at one administration event. Use
  /// this value when the administration is essentially an instantaneous
  /// event such as a swallowing a tablet or giving an injection.
  final Quantity? dose;

  /// [rateRatio]
  /// Identifies the speed with which the medication was or will be
  /// introduced into the patient. Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
  /// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
  /// 200 mcg/1 minute; 1 liter/8 hours.
  final Ratio? rateRatio;

  /// [rateQuantity]
  /// Identifies the speed with which the medication was or will be
  /// introduced into the patient. Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
  /// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
  /// 200 mcg/1 minute; 1 liter/8 hours.
  final Quantity? rateQuantity;
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

    if (text != null) {
      final fieldJson3 = text!.toJson();
      json['text'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_text'] = fieldJson3['_value'];
      }
    }

    if (site != null) {
      final fieldJson4 = site!.toJson();
      json['site'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_site'] = fieldJson4['_value'];
      }
    }

    if (route != null) {
      final fieldJson5 = route!.toJson();
      json['route'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_route'] = fieldJson5['_value'];
      }
    }

    if (method != null) {
      final fieldJson6 = method!.toJson();
      json['method'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_method'] = fieldJson6['_value'];
      }
    }

    if (dose != null) {
      final fieldJson7 = dose!.toJson();
      json['dose'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_dose'] = fieldJson7['_value'];
      }
    }

    if (rateRatio != null) {
      final fieldJson8 = rateRatio!.toJson();
      json['rateRatio'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_rateRatio'] = fieldJson8['_value'];
      }
    }

    if (rateQuantity != null) {
      final fieldJson9 = rateQuantity!.toJson();
      json['rateQuantity'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_rateQuantity'] = fieldJson9['_value'];
      }
    }

    return json;
  }

  @override
  MedicationAdministrationDosage clone() => throw UnimplementedError();
  @override
  MedicationAdministrationDosage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? text,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? method,
    Quantity? dose,
    Ratio? rateRatio,
    Quantity? rateQuantity,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationAdministrationDosage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
      site: site ?? this.site,
      route: route ?? this.route,
      method: method ?? this.method,
      dose: dose ?? this.dose,
      rateRatio: rateRatio ?? this.rateRatio,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
