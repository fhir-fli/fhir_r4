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

  const Procedure({
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
    this.performedX,
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
  }) : super(
          resourceType: R4ResourceType.Procedure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Procedure.fromJson(
    Map<String, dynamic> json,
  ) {
    return Procedure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      performedX: JsonParser.parsePolymorphic<PerformedXProcedure>(json, {
        'performedDateTime': FhirDateTime.fromJson,
        'performedPeriod': Period.fromJson,
        'performedString': FhirString.fromJson,
        'performedAge': Age.fromJson,
        'performedRange': Range.fromJson,
      }),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ProcedurePerformer>(
            (v) => ProcedurePerformer.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
      ),
      report: (json['report'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      complication: (json['complication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      complicationDetail: (json['complicationDetail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      focalDevice: (json['focalDevice'] as List<dynamic>?)
          ?.map<ProcedureFocalDevice>(
            (v) => ProcedureFocalDevice.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      usedReference: (json['usedReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      usedCode: (json['usedCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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

  /// [performedX]
  /// Estimated or actual date, date-time, period, or age when the procedure
  /// was performed. Allows a period to support complex procedures that span
  /// more than one date, and also allows for the length of the procedure to
  /// be captured.
  final PerformedXProcedure? performedX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (performedX != null) {
      final fhirType = performedX!.fhirType;
      addField('performed${fhirType.capitalize()}', performedX);
    }

    addField('recorder', recorder);
    addField('asserter', asserter);
    addField('performer', performer);
    addField('location', location);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('bodySite', bodySite);
    addField('outcome', outcome);
    addField('report', report);
    addField('complication', complication);
    addField('complicationDetail', complicationDetail);
    addField('followUp', followUp);
    addField('note', note);
    addField('focalDevice', focalDevice);
    addField('usedReference', usedReference);
    addField('usedCode', usedCode);
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
    PerformedXProcedure? performedX,
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
      performedX: performedX ?? this.performedX,
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
    );
  }
}

/// [ProcedurePerformer]
/// Limited to "real" people rather than equipment.
class ProcedurePerformer extends BackboneElement {
  /// Primary constructor for
  /// [ProcedurePerformer]

  const ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProcedurePerformer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
      ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('function', function_);
    addField('actor', actor);
    addField('onBehalfOf', onBehalfOf);
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
  }) {
    return ProcedurePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
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

  const ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDevice.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProcedureFocalDevice(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      action: JsonParser.parseObject<CodeableConcept>(
        json,
        'action',
        CodeableConcept.fromJson,
      ),
      manipulated: JsonParser.parseObject<Reference>(
        json,
        'manipulated',
        Reference.fromJson,
      )!,
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('action', action);
    addField('manipulated', manipulated);
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
  }) {
    return ProcedureFocalDevice(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      manipulated: manipulated ?? this.manipulated,
    );
  }
}
