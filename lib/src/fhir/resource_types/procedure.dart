import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Procedure]
/// An action that is or was performed on or for a patient. This can be a
/// physical intervention like an operation, or less invasive like long
/// term services, counseling, or hypnotherapy.
class Procedure extends DomainResource {
  /// Primary constructor for [Procedure]

  Procedure({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
  factory Procedure.fromJson(Map<String, dynamic> json) {
    return Procedure(
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
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
          json['instantiatesCanonical'] as List<dynamic>?,
          json['_instantiatesCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
      performedDateTime: json['performedDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['performedDateTime'],
              '_value': json['_performedDateTime'],
            })
          : null,
      performedPeriod: json['performedPeriod'] != null
          ? Period.fromJson(
              json['performedPeriod'] as Map<String, dynamic>,
            )
          : null,
      performedString: json['performedString'] != null
          ? FhirString.fromJson({
              'value': json['performedString'],
              '_value': json['_performedString'],
            })
          : null,
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
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ProcedurePerformer>(
                (v) => ProcedurePerformer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
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
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              json['outcome'] as Map<String, dynamic>,
            )
          : null,
      report: json['report'] != null
          ? (json['report'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      complication: json['complication'] != null
          ? (json['complication'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      complicationDetail: json['complicationDetail'] != null
          ? (json['complicationDetail'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      followUp: json['followUp'] != null
          ? (json['followUp'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      focalDevice: json['focalDevice'] != null
          ? (json['focalDevice'] as List<dynamic>)
              .map<ProcedureFocalDevice>(
                (v) => ProcedureFocalDevice.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      usedReference: json['usedReference'] != null
          ? (json['usedReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      usedCode: json['usedCode'] != null
          ? (json['usedCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Procedure] from a [String]
  /// or [YamlMap] object
  factory Procedure.fromYaml(dynamic yaml) => yaml is String
      ? Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Procedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Procedure cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Procedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Procedure.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson9 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson10 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson11 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson12 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    final fieldJson13 = status.toJson();
    json['status'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_status'] = fieldJson13['_value'];
    }

    if (statusReason != null) {
      final fieldJson14 = statusReason!.toJson();
      json['statusReason'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_statusReason'] = fieldJson14['_value'];
      }
    }

    if (category != null) {
      final fieldJson15 = category!.toJson();
      json['category'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_category'] = fieldJson15['_value'];
      }
    }

    if (code != null) {
      final fieldJson16 = code!.toJson();
      json['code'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_code'] = fieldJson16['_value'];
      }
    }

    final fieldJson17 = subject.toJson();
    json['subject'] = fieldJson17['value'];
    if (fieldJson17['_value'] != null) {
      json['_subject'] = fieldJson17['_value'];
    }

    if (encounter != null) {
      final fieldJson18 = encounter!.toJson();
      json['encounter'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_encounter'] = fieldJson18['_value'];
      }
    }

    if (performedDateTime != null) {
      final fieldJson19 = performedDateTime!.toJson();
      json['performedDateTime'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_performedDateTime'] = fieldJson19['_value'];
      }
    }

    if (performedPeriod != null) {
      final fieldJson20 = performedPeriod!.toJson();
      json['performedPeriod'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_performedPeriod'] = fieldJson20['_value'];
      }
    }

    if (performedString != null) {
      final fieldJson21 = performedString!.toJson();
      json['performedString'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_performedString'] = fieldJson21['_value'];
      }
    }

    if (performedAge != null) {
      final fieldJson22 = performedAge!.toJson();
      json['performedAge'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_performedAge'] = fieldJson22['_value'];
      }
    }

    if (performedRange != null) {
      final fieldJson23 = performedRange!.toJson();
      json['performedRange'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_performedRange'] = fieldJson23['_value'];
      }
    }

    if (recorder != null) {
      final fieldJson24 = recorder!.toJson();
      json['recorder'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_recorder'] = fieldJson24['_value'];
      }
    }

    if (asserter != null) {
      final fieldJson25 = asserter!.toJson();
      json['asserter'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_asserter'] = fieldJson25['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson26 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

    if (location != null) {
      final fieldJson27 = location!.toJson();
      json['location'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_location'] = fieldJson27['_value'];
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

    if (bodySite != null && bodySite!.isNotEmpty) {
      final fieldJson30 = bodySite!.map((e) => e.toJson()).toList();
      json['bodySite'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_bodySite'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (outcome != null) {
      final fieldJson31 = outcome!.toJson();
      json['outcome'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_outcome'] = fieldJson31['_value'];
      }
    }

    if (report != null && report!.isNotEmpty) {
      final fieldJson32 = report!.map((e) => e.toJson()).toList();
      json['report'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_report'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (complication != null && complication!.isNotEmpty) {
      final fieldJson33 = complication!.map((e) => e.toJson()).toList();
      json['complication'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_complication'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (complicationDetail != null && complicationDetail!.isNotEmpty) {
      final fieldJson34 = complicationDetail!.map((e) => e.toJson()).toList();
      json['complicationDetail'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_complicationDetail'] =
            fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (followUp != null && followUp!.isNotEmpty) {
      final fieldJson35 = followUp!.map((e) => e.toJson()).toList();
      json['followUp'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_followUp'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson36 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (focalDevice != null && focalDevice!.isNotEmpty) {
      final fieldJson37 = focalDevice!.map((e) => e.toJson()).toList();
      json['focalDevice'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_focalDevice'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (usedReference != null && usedReference!.isNotEmpty) {
      final fieldJson38 = usedReference!.map((e) => e.toJson()).toList();
      json['usedReference'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_usedReference'] = fieldJson38.map((e) => e['_value']).toList();
      }
    }

    if (usedCode != null && usedCode!.isNotEmpty) {
      final fieldJson39 = usedCode!.map((e) => e.toJson()).toList();
      json['usedCode'] = fieldJson39.map((e) => e['value']).toList();
      if (fieldJson39.any((e) => e['_value'] != null)) {
        json['_usedCode'] = fieldJson39.map((e) => e['_value']).toList();
      }
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
  /// Primary constructor for [ProcedurePerformer]

  ProcedurePerformer({
    super.id,
    this.extension_,
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
  factory ProcedurePerformer.fromJson(Map<String, dynamic> json) {
    return ProcedurePerformer(
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
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(
              json['onBehalfOf'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ProcedurePerformer] from a [String]
  /// or [YamlMap] object
  factory ProcedurePerformer.fromYaml(dynamic yaml) => yaml is String
      ? ProcedurePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ProcedurePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ProcedurePerformer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ProcedurePerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedurePerformer.fromJsonString(String source) {
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

    if (onBehalfOf != null) {
      final fieldJson5 = onBehalfOf!.toJson();
      json['onBehalfOf'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_onBehalfOf'] = fieldJson5['_value'];
      }
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
  /// Primary constructor for [ProcedureFocalDevice]

  ProcedureFocalDevice({
    super.id,
    this.extension_,
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
  factory ProcedureFocalDevice.fromJson(Map<String, dynamic> json) {
    return ProcedureFocalDevice(
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

  /// Deserialize [ProcedureFocalDevice] from a [String]
  /// or [YamlMap] object
  factory ProcedureFocalDevice.fromYaml(dynamic yaml) => yaml is String
      ? ProcedureFocalDevice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ProcedureFocalDevice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ProcedureFocalDevice cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ProcedureFocalDevice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ProcedureFocalDevice.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [action]
  /// The kind of change that happened to the device during the procedure.
  final CodeableConcept? action;

  /// [manipulated]
  /// The device that was manipulated (changed) during the procedure.
  final Reference manipulated;
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

    if (action != null) {
      final fieldJson3 = action!.toJson();
      json['action'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_action'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = manipulated.toJson();
    json['manipulated'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_manipulated'] = fieldJson4['_value'];
    }

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
