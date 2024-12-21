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
  /// Primary constructor for
  /// [MedicationAdministration]

  const MedicationAdministration({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiates,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    required this.medicationX,
    required this.subject,
    this.context,
    this.supportingInformation,
    required this.effectiveX,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  }) : super(
          resourceType: R4ResourceType.MedicationAdministration,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationAdministration(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
        fromJson: FhirUri.fromJson,
      ),
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
      medicationX: json['medicationCodeableConcept'] != null ||
              json['_medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson({
              'value': json['medicationCodeableConcept'],
              '_value': json['_medicationCodeableConcept'],
            })
          : Reference.fromJson(
              json['medicationReference'] as Map<String, dynamic>,
            ),
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
      effectiveX: json['effectiveDateTime'] != null ||
              json['_effectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['effectiveDateTime'],
              '_value': json['_effectiveDateTime'],
            })
          : Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            ),
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

  /// Deserialize [MedicationAdministration]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministration.fromJsonString(
    String source,
  ) {
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

  /// [medicationX]
  /// Identifies the medication that was administered. This is either a link
  /// to a resource representing the details of the medication or a simple
  /// attribute carrying a code that identifies the medication from a known
  /// list of medications.
  final MedicationXMedicationAdministration medicationX;

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

  /// [effectiveX]
  /// A specific date/time or interval of time during which the
  /// administration took place (or did not take place, when the 'notGiven'
  /// attribute is true). For many administrations, such as swallowing a
  /// tablet the use of dateTime is more appropriate.
  final EffectiveXMedicationAdministration effectiveX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (instantiates != null && instantiates!.isNotEmpty) {
      final fieldJson0 = instantiates!.map((e) => e.toJson()).toList();
      json['instantiates'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiates'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null && statusReason!.isNotEmpty) {
      json['statusReason'] = statusReason!.map((e) => e.toJson()).toList();
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    json['medication${medicationX.fhirType.capitalize()}'] =
        medicationX.toJson();

    json['subject'] = subject.toJson();

    if (context != null) {
      json['context'] = context!.toJson();
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] =
          supportingInformation!.map((e) => e.toJson()).toList();
    }

    addField('effective${effectiveX.fhirType.capitalize()}', effectiveX);
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (request != null) {
      json['request'] = request!.toJson();
    }

    if (device != null && device!.isNotEmpty) {
      json['device'] = device!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (dosage != null) {
      json['dosage'] = dosage!.toJson();
    }

    if (eventHistory != null && eventHistory!.isNotEmpty) {
      json['eventHistory'] = eventHistory!.map((e) => e.toJson()).toList();
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
    MedicationXMedicationAdministration? medicationX,
    Reference? subject,
    Reference? context,
    List<Reference>? supportingInformation,
    EffectiveXMedicationAdministration? effectiveX,
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
      medicationX: medicationX ?? this.medicationX,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      effectiveX: effectiveX ?? this.effectiveX,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      request: request ?? this.request,
      device: device ?? this.device,
      note: note ?? this.note,
      dosage: dosage ?? this.dosage,
      eventHistory: eventHistory ?? this.eventHistory,
    );
  }
}

/// [MedicationAdministrationPerformer]
/// Indicates who or what performed the medication administration and how
/// they were involved.
class MedicationAdministrationPerformer extends BackboneElement {
  /// Primary constructor for
  /// [MedicationAdministrationPerformer]

  const MedicationAdministrationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationAdministrationPerformer(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [MedicationAdministrationPerformer]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationPerformer.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (function_ != null) {
      json['function'] = function_!.toJson();
    }

    json['actor'] = actor.toJson();

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
  }) {
    return MedicationAdministrationPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
  }
}

/// [MedicationAdministrationDosage]
/// Describes the medication dosage information details e.g. dose, rate,
/// site, route, etc.
class MedicationAdministrationDosage extends BackboneElement {
  /// Primary constructor for
  /// [MedicationAdministrationDosage]

  const MedicationAdministrationDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.text,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationAdministrationDosage.fromJson(
    Map<String, dynamic> json,
  ) {
    return MedicationAdministrationDosage(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      text: (json['text'] != null || json['_text'] != null)
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
      rateX: json['rateRatio'] != null || json['_rateRatio'] != null
          ? Ratio.fromJson({
              'value': json['rateRatio'],
              '_value': json['_rateRatio'],
            })
          : json['rateQuantity'] != null
              ? Quantity.fromJson(
                  json['rateQuantity'] as Map<String, dynamic>,
                )
              : null,
    );
  }

  /// Deserialize [MedicationAdministrationDosage]
  /// from a [String] or [YamlMap] object
  factory MedicationAdministrationDosage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationAdministrationDosage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationAdministrationDosage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationAdministrationDosage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationAdministrationDosage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationAdministrationDosage.fromJsonString(
    String source,
  ) {
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

  /// [rateX]
  /// Identifies the speed with which the medication was or will be
  /// introduced into the patient. Typically, the rate for an infusion e.g.
  /// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
  /// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
  /// 200 mcg/1 minute; 1 liter/8 hours.
  final RateXMedicationAdministrationDosage? rateX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('text', text);
    if (site != null) {
      json['site'] = site!.toJson();
    }

    if (route != null) {
      json['route'] = route!.toJson();
    }

    if (method != null) {
      json['method'] = method!.toJson();
    }

    if (dose != null) {
      json['dose'] = dose!.toJson();
    }

    if (rateX != null) {
      json['rate${rateX!.fhirType.capitalize()}'] = rateX!.toJson();
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
    RateXMedicationAdministrationDosage? rateX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      rateX: rateX ?? this.rateX,
    );
  }
}
