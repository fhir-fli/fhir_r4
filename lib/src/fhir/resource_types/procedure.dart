import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Procedure]
/// An action that is or was performed on or for a patient. This can be a
/// physical intervention like an operation, or less invasive like long
/// term services, counseling, or hypnotherapy.
class Procedure extends DomainResource {
  /// Primary constructor for
  /// [Procedure]

  Procedure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
    this.performedPeriod,
    this.performedString,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Procedure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Procedure.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Procedure(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      instantiatesCanonical: parseList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        FhirCanonical.fromJson,
      ),
      instantiatesUri: parseList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        FhirUri.fromJson,
      ),
      basedOn: parseList<Reference>(
        json['basedOn'] as List<dynamic>?,
        json['_basedOn'] as List<dynamic>?,
        Reference.fromJson,
      ),
      partOf: parseList<Reference>(
        json['partOf'] as List<dynamic>?,
        json['_partOf'] as List<dynamic>?,
        Reference.fromJson,
      ),
      status: EventStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      performedDateTime: parseField<FhirDateTime>(
        json['performedDateTime'],
        json['_performedDateTime'],
        FhirDateTime.fromJson,
      ),
      performedPeriod: json['performedPeriod'] != null
          ? Period.fromJson(
              json['performedPeriod'] as Map<String, dynamic>,
            )
          : null,
      performedString: parseField<FhirString>(
        json['performedString'],
        json['_performedString'],
        FhirString.fromJson,
      ),
      performedAge: json['performedAge'] != null
          ? Age.fromJson(
              json['performedAge'] as Map<String, dynamic>,
            )
          : null,
      performedRange: json['performedRange'] != null
          ? Range.fromJson(
              json['performedRange'] as Map<String, dynamic>,
            )
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              json['recorder'] as Map<String, dynamic>,
            )
          : null,
      asserter: json['asserter'] != null
          ? Reference.fromJson(
              json['asserter'] as Map<String, dynamic>,
            )
          : null,
      performer: parseList<ProcedurePerformer>(
        json['performer'] as List<dynamic>?,
        json['_performer'] as List<dynamic>?,
        ProcedurePerformer.fromJson,
      ),
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: parseList<CodeableConcept>(
        json['reasonCode'] as List<dynamic>?,
        json['_reasonCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      reasonReference: parseList<Reference>(
        json['reasonReference'] as List<dynamic>?,
        json['_reasonReference'] as List<dynamic>?,
        Reference.fromJson,
      ),
      bodySite: parseList<CodeableConcept>(
        json['bodySite'] as List<dynamic>?,
        json['_bodySite'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              json['outcome'] as Map<String, dynamic>,
            )
          : null,
      report: parseList<Reference>(
        json['report'] as List<dynamic>?,
        json['_report'] as List<dynamic>?,
        Reference.fromJson,
      ),
      complication: parseList<CodeableConcept>(
        json['complication'] as List<dynamic>?,
        json['_complication'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      complicationDetail: parseList<Reference>(
        json['complicationDetail'] as List<dynamic>?,
        json['_complicationDetail'] as List<dynamic>?,
        Reference.fromJson,
      ),
      followUp: parseList<CodeableConcept>(
        json['followUp'] as List<dynamic>?,
        json['_followUp'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      focalDevice: parseList<ProcedureFocalDevice>(
        json['focalDevice'] as List<dynamic>?,
        json['_focalDevice'] as List<dynamic>?,
        ProcedureFocalDevice.fromJson,
      ),
      usedReference: parseList<Reference>(
        json['usedReference'] as List<dynamic>?,
        json['_usedReference'] as List<dynamic>?,
        Reference.fromJson,
      ),
      usedCode: parseList<CodeableConcept>(
        json['usedCode'] as List<dynamic>?,
        json['_usedCode'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [Procedure]
  /// from a [String] or [YamlMap] object
  factory Procedure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Procedure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Procedure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Procedure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Procedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Procedure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Procedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Procedure';

  /// [identifier]
  /// Business identifiers assigned to this procedure by the performer or
  /// other systems which remain constant as the resource is updated and is
  /// propagated from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, order set or
  /// other definition that is adhered to in whole or in part by this
  /// Procedure.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline, order
  /// set or other definition that is adhered to in whole or in part by this
  /// Procedure.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A reference to a resource that contains details of the request for this
  /// procedure.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular procedure is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status]
  /// A code specifying the state of the procedure. Generally, this will be
  /// the in-progress or completed state.
  final EventStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the procedure.
  final CodeableConcept? statusReason;

  /// [category]
  /// A code that classifies the procedure for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final CodeableConcept? category;

  /// [code]
  /// The specific procedure that is performed. Use text if the exact nature
  /// of the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  final CodeableConcept? code;

  /// [subject]
  /// The person, animal or group on which the procedure was performed.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this Procedure was created or performed or
  /// to which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [performedDateTime]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final FhirDateTime? performedDateTime;

  /// [performedPeriod]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final Period? performedPeriod;

  /// [performedString]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final FhirString? performedString;

  /// [performedAge]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final Age? performedAge;

  /// [performedRange]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final Range? performedRange;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// Individual who is making the procedure statement.
  final Reference? asserter;

  /// [performer]
  /// Limited to "real" people rather than equipment.
  final List<ProcedurePerformer>? performer;

  /// [location]
  /// The location where the procedure actually happened. E.g. a newborn at
  /// home, a tracheostomy at a restaurant.
  final Reference? location;

  /// [reasonCode]
  /// The coded reason why the procedure was performed. This may be a coded
  /// entity of some type, or may simply be present as text.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// The justification of why the procedure was performed.
  final List<Reference>? reasonReference;

  /// [bodySite]
  /// Detailed and structured anatomical location information. Multiple
  /// locations are allowed - e.g. multiple punch biopsies of a lesion.
  final List<CodeableConcept>? bodySite;

  /// [outcome]
  /// The outcome of the procedure - did it resolve the reasons for the
  /// procedure being performed?
  final CodeableConcept? outcome;

  /// [report]
  /// This could be a histology result, pathology report, surgical report,
  /// etc.
  final List<Reference>? report;

  /// [complication]
  /// Any complications that occurred during the procedure, or in the
  /// immediate post-performance period. These are generally tracked
  /// separately from the notes, which will typically describe the procedure
  /// itself rather than any 'post procedure' issues.
  final List<CodeableConcept>? complication;

  /// [complicationDetail]
  /// Any complications that occurred during the procedure, or in the
  /// immediate post-performance period.
  final List<Reference>? complicationDetail;

  /// [followUp]
  /// If the procedure required specific follow up - e.g. removal of sutures.
  /// The follow up may be represented as a simple note or could potentially
  /// be more complex, in which case the CarePlan resource can be used.
  final List<CodeableConcept>? followUp;

  /// [note]
  /// Any other notes and comments about the procedure.
  final List<Annotation>? note;

  /// [focalDevice]
  /// A device that is implanted, removed or otherwise manipulated
  /// (calibration, battery replacement, fitting a prosthesis, attaching a
  /// wound-vac, etc.) as a focal portion of the Procedure.
  final List<ProcedureFocalDevice>? focalDevice;

  /// [usedReference]
  /// Identifies medications, devices and any other substance used as part of
  /// the procedure.
  final List<Reference>? usedReference;

  /// [usedCode]
  /// Identifies coded items that were used as part of the procedure.
  final List<CodeableConcept>? usedCode;
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

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson0 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson1 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('performedDateTime', performedDateTime);
    if (performedPeriod != null) {
      json['performedPeriod'] = performedPeriod!.toJson();
    }

    addField('performedString', performedString);
    if (performedAge != null) {
      json['performedAge'] = performedAge!.toJson();
    }

    if (performedRange != null) {
      json['performedRange'] = performedRange!.toJson();
    }

    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (asserter != null) {
      json['asserter'] = asserter!.toJson();
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (bodySite != null && bodySite!.isNotEmpty) {
      json['bodySite'] = bodySite!.map((e) => e.toJson()).toList();
    }

    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }

    if (report != null && report!.isNotEmpty) {
      json['report'] = report!.map((e) => e.toJson()).toList();
    }

    if (complication != null && complication!.isNotEmpty) {
      json['complication'] = complication!.map((e) => e.toJson()).toList();
    }

    if (complicationDetail != null && complicationDetail!.isNotEmpty) {
      json['complicationDetail'] =
          complicationDetail!.map((e) => e.toJson()).toList();
    }

    if (followUp != null && followUp!.isNotEmpty) {
      json['followUp'] = followUp!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (focalDevice != null && focalDevice!.isNotEmpty) {
      json['focalDevice'] = focalDevice!.map((e) => e.toJson()).toList();
    }

    if (usedReference != null && usedReference!.isNotEmpty) {
      json['usedReference'] = usedReference!.map((e) => e.toJson()).toList();
    }

    if (usedCode != null && usedCode!.isNotEmpty) {
      json['usedCode'] = usedCode!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Procedure clone() => throw UnimplementedError();
  @override
  Procedure copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    EventStatus? status,
    CodeableConcept? statusReason,
    CodeableConcept? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? performedDateTime,
    Period? performedPeriod,
    FhirString? performedString,
    Age? performedAge,
    Range? performedRange,
    Reference? recorder,
    Reference? asserter,
    List<ProcedurePerformer>? performer,
    Reference? location,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<CodeableConcept>? bodySite,
    CodeableConcept? outcome,
    List<Reference>? report,
    List<CodeableConcept>? complication,
    List<Reference>? complicationDetail,
    List<CodeableConcept>? followUp,
    List<Annotation>? note,
    List<ProcedureFocalDevice>? focalDevice,
    List<Reference>? usedReference,
    List<CodeableConcept>? usedCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Procedure(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      performedDateTime: performedDateTime ?? this.performedDateTime,
      performedPeriod: performedPeriod ?? this.performedPeriod,
      performedString: performedString ?? this.performedString,
      performedAge: performedAge ?? this.performedAge,
      performedRange: performedRange ?? this.performedRange,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      bodySite: bodySite ?? this.bodySite,
      outcome: outcome ?? this.outcome,
      report: report ?? this.report,
      complication: complication ?? this.complication,
      complicationDetail: complicationDetail ?? this.complicationDetail,
      followUp: followUp ?? this.followUp,
      note: note ?? this.note,
      focalDevice: focalDevice ?? this.focalDevice,
      usedReference: usedReference ?? this.usedReference,
      usedCode: usedCode ?? this.usedCode,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ProcedurePerformer]
/// Limited to "real" people rather than equipment.
class ProcedurePerformer extends BackboneElement {
  /// Primary constructor for
  /// [ProcedurePerformer]

  ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ProcedurePerformer(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      function_: json['function'] != null
          ? CodeableConcept.fromJson(
              json['function'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ProcedurePerformer]
  /// from a [String] or [YamlMap] object
  factory ProcedurePerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedurePerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedurePerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedurePerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedurePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedurePerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProcedurePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProcedurePerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the
  /// procedure. For example, surgeon, anaesthetist, endoscopist.
  final CodeableConcept? function_;

  /// [actor]
  /// The practitioner who was involved in the procedure.
  final Reference actor;

  /// [onBehalfOf]
  /// The organization the device or practitioner was acting on behalf of.
  final Reference? onBehalfOf;
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

    if (onBehalfOf != null) {
      json['onBehalfOf'] = onBehalfOf!.toJson();
    }

    return json;
  }

  @override
  ProcedurePerformer clone() => throw UnimplementedError();
  @override
  ProcedurePerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Reference? onBehalfOf,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProcedurePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ProcedureFocalDevice]
/// A device that is implanted, removed or otherwise manipulated
/// (calibration, battery replacement, fitting a prosthesis, attaching a
/// wound-vac, etc.) as a focal portion of the Procedure.
class ProcedureFocalDevice extends BackboneElement {
  /// Primary constructor for
  /// [ProcedureFocalDevice]

  ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDevice.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ProcedureFocalDevice(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      action: json['action'] != null
          ? CodeableConcept.fromJson(
              json['action'] as Map<String, dynamic>,
            )
          : null,
      manipulated: Reference.fromJson(
        json['manipulated'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ProcedureFocalDevice]
  /// from a [String] or [YamlMap] object
  factory ProcedureFocalDevice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ProcedureFocalDevice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ProcedureFocalDevice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ProcedureFocalDevice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ProcedureFocalDevice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedureFocalDevice.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProcedureFocalDevice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ProcedureFocalDevice';

  /// [action]
  /// The kind of change that happened to the device during the procedure.
  final CodeableConcept? action;

  /// [manipulated]
  /// The device that was manipulated (changed) during the procedure.
  final Reference manipulated;
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

    if (action != null) {
      json['action'] = action!.toJson();
    }

    json['manipulated'] = manipulated.toJson();

    return json;
  }

  @override
  ProcedureFocalDevice clone() => throw UnimplementedError();
  @override
  ProcedureFocalDevice copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    Reference? manipulated,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProcedureFocalDevice(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      manipulated: manipulated ?? this.manipulated,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
