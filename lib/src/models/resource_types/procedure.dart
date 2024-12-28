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
          objectPath: 'Procedure',
          resourceType: R4ResourceType.Procedure,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Procedure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure';
    return Procedure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<EventStatus>(
        json,
        'status',
        EventStatus.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      performedX: JsonParser.parsePolymorphic<PerformedXProcedure>(
        json,
        {
          'performedDateTime': FhirDateTime.fromJson,
          'performedPeriod': Period.fromJson,
          'performedString': FhirString.fromJson,
          'performedAge': Age.fromJson,
          'performedRange': Range.fromJson,
        },
        objectPath,
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
        '$objectPath.recorder',
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
        '$objectPath.asserter',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ProcedurePerformer>(
            (v) => ProcedurePerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
        '$objectPath.outcome',
      ),
      report: (json['report'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.report',
              },
            ),
          )
          .toList(),
      complication: (json['complication'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.complication',
              },
            ),
          )
          .toList(),
      complicationDetail: (json['complicationDetail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.complicationDetail',
              },
            ),
          )
          .toList(),
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.followUp',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      focalDevice: (json['focalDevice'] as List<dynamic>?)
          ?.map<ProcedureFocalDevice>(
            (v) => ProcedureFocalDevice.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focalDevice',
              },
            ),
          )
          .toList(),
      usedReference: (json['usedReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usedReference',
              },
            ),
          )
          .toList(),
      usedCode: (json['usedCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.usedCode',
              },
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
    if (json is Map<String, dynamic>) {
      return Procedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'partOf',
      'status',
      'statusReason',
      'category',
      'code',
      'subject',
      'encounter',
      'performedX',
      'recorder',
      'asserter',
      'performer',
      'location',
      'reasonCode',
      'reasonReference',
      'bodySite',
      'outcome',
      'report',
      'complication',
      'complicationDetail',
      'followUp',
      'note',
      'focalDevice',
      'usedReference',
      'usedCode',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'performedDateTime':
        if (performedX is FhirDateTime) {
          fields.add(performedX!);
        }
      case 'performedPeriod':
        if (performedX is Period) {
          fields.add(performedX!);
        }
      case 'performedString':
        if (performedX is FhirString) {
          fields.add(performedX!);
        }
      case 'performedAge':
        if (performedX is Age) {
          fields.add(performedX!);
        }
      case 'performedRange':
        if (performedX is Range) {
          fields.add(performedX!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'asserter':
        if (asserter != null) {
          fields.add(asserter!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'report':
        if (report != null) {
          fields.addAll(report!);
        }
      case 'complication':
        if (complication != null) {
          fields.addAll(complication!);
        }
      case 'complicationDetail':
        if (complicationDetail != null) {
          fields.addAll(complicationDetail!);
        }
      case 'followUp':
        if (followUp != null) {
          fields.addAll(followUp!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'focalDevice':
        if (focalDevice != null) {
          fields.addAll(focalDevice!);
        }
      case 'usedReference':
        if (usedReference != null) {
          fields.addAll(usedReference!);
        }
      case 'usedCode':
        if (usedCode != null) {
          fields.addAll(usedCode!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Procedure(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      performedX: performedX?.copyWith(
            objectPath: '$newObjectPath.performedX',
          ) as PerformedXProcedure? ??
          this.performedX,
      recorder: recorder?.copyWith(
            objectPath: '$newObjectPath.recorder',
          ) ??
          this.recorder,
      asserter: asserter?.copyWith(
            objectPath: '$newObjectPath.asserter',
          ) ??
          this.asserter,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      bodySite: bodySite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodySite',
                ),
              )
              .toList() ??
          this.bodySite,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      report: report
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.report',
                ),
              )
              .toList() ??
          this.report,
      complication: complication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.complication',
                ),
              )
              .toList() ??
          this.complication,
      complicationDetail: complicationDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.complicationDetail',
                ),
              )
              .toList() ??
          this.complicationDetail,
      followUp: followUp
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.followUp',
                ),
              )
              .toList() ??
          this.followUp,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      focalDevice: focalDevice
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.focalDevice',
                ),
              )
              .toList() ??
          this.focalDevice,
      usedReference: usedReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.usedReference',
                ),
              )
              .toList() ??
          this.usedReference,
      usedCode: usedCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.usedCode',
                ),
              )
              .toList() ??
          this.usedCode,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Procedure) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusReason, o.statusReason)) {
      return false;
    }
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(performedX, o.performedX)) {
      return false;
    }
    if (!equalsDeepWithNull(recorder, o.recorder)) {
      return false;
    }
    if (!equalsDeepWithNull(asserter, o.asserter)) {
      return false;
    }
    if (!listEquals<ProcedurePerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(outcome, o.outcome)) {
      return false;
    }
    if (!listEquals<Reference>(
      report,
      o.report,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      complication,
      o.complication,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      complicationDetail,
      o.complicationDetail,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      followUp,
      o.followUp,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ProcedureFocalDevice>(
      focalDevice,
      o.focalDevice,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      usedReference,
      o.usedReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      usedCode,
      o.usedCode,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Procedure.performer',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedurePerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure.performer';
    return ProcedurePerformer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
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
    if (json is Map<String, dynamic>) {
      return ProcedurePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
      'onBehalfOf',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ProcedurePerformer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      function_: function_?.copyWith(
            objectPath: '$newObjectPath.function',
          ) ??
          this.function_,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
      onBehalfOf: onBehalfOf?.copyWith(
            objectPath: '$newObjectPath.onBehalfOf',
          ) ??
          this.onBehalfOf,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProcedurePerformer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(function_, o.function_)) {
      return false;
    }
    if (!equalsDeepWithNull(actor, o.actor)) {
      return false;
    }
    if (!equalsDeepWithNull(onBehalfOf, o.onBehalfOf)) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Procedure.focalDevice',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ProcedureFocalDevice.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Procedure.focalDevice';
    return ProcedureFocalDevice(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      action: JsonParser.parseObject<CodeableConcept>(
        json,
        'action',
        CodeableConcept.fromJson,
        '$objectPath.action',
      ),
      manipulated: JsonParser.parseObject<Reference>(
        json,
        'manipulated',
        Reference.fromJson,
        '$objectPath.manipulated',
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
    if (json is Map<String, dynamic>) {
      return ProcedureFocalDevice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'action',
      'manipulated',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'action':
        if (action != null) {
          fields.add(action!);
        }
      case 'manipulated':
        fields.add(manipulated);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ProcedureFocalDevice(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      action: action?.copyWith(
            objectPath: '$newObjectPath.action',
          ) ??
          this.action,
      manipulated: manipulated?.copyWith(
            objectPath: '$newObjectPath.manipulated',
          ) ??
          this.manipulated,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ProcedureFocalDevice) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(action, o.action)) {
      return false;
    }
    if (!equalsDeepWithNull(manipulated, o.manipulated)) {
      return false;
    }
    return true;
  }
}
