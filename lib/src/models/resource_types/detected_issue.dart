import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DetectedIssue]
/// Indicates an actual or potential clinical issue with or between one or
/// more active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition
/// conflict, etc.
class DetectedIssue extends DomainResource {
  /// Primary constructor for
  /// [DetectedIssue]

  const DetectedIssue({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.code,
    this.severity,
    this.patient,
    this.identifiedX,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.reference,
    this.mitigation,
  }) : super(
          objectPath: 'DetectedIssue',
          resourceType: R4ResourceType.DetectedIssue,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue';
    return DetectedIssue(
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
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.contained',
                  },
                ),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.identifier',
                  },
                ),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
        '$objectPath.status',
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      severity: JsonParser.parsePrimitive<DetectedIssueSeverity>(
        json,
        'severity',
        DetectedIssueSeverity.fromJson,
        '$objectPath.severity',
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      identifiedX: JsonParser.parsePolymorphic<IdentifiedXDetectedIssue>(
        json,
        {
          'identifiedDateTime': FhirDateTime.fromJson,
          'identifiedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      implicated: (json['implicated'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.implicated',
                  },
                ),
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<DetectedIssueEvidence>(
            (v) => DetectedIssueEvidence.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.evidence',
                  },
                ),
            ),
          )
          .toList(),
      detail: JsonParser.parsePrimitive<FhirString>(
        json,
        'detail',
        FhirString.fromJson,
        '$objectPath.detail',
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
        '$objectPath.reference',
      ),
      mitigation: (json['mitigation'] as List<dynamic>?)
          ?.map<DetectedIssueMitigation>(
            (v) => DetectedIssueMitigation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.mitigation',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DetectedIssue]
  /// from a [String] or [YamlMap] object
  factory DetectedIssue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssue';

  /// [identifier]
  /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the status of the detected issue.
  final ObservationStatus status;

  /// [code]
  /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// [severity]
  /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  final DetectedIssueSeverity? severity;

  /// [patient]
  /// Indicates the patient whose record the detected issue is associated
  /// with.
  final Reference? patient;

  /// [identifiedX]
  /// The date or period when the detected issue was initially identified.
  final IdentifiedXDetectedIssue? identifiedX;

  /// [author]
  /// Individual or device responsible for the issue being raised. For
  /// example, a decision support application or a pharmacist conducting a
  /// medication review.
  final Reference? author;

  /// [implicated]
  /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  final List<Reference>? implicated;

  /// [evidence]
  /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or
  /// MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// [detail]
  /// A textual explanation of the detected issue.
  final FhirString? detail;

  /// [reference]
  /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  final FhirUri? reference;

  /// [mitigation]
  /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue
  /// from manifesting. Can also reflect an observation of known mitigating
  /// factors that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;
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
    addField('status', status);
    addField('code', code);
    addField('severity', severity);
    addField('patient', patient);
    if (identifiedX != null) {
      final fhirType = identifiedX!.fhirType;
      addField('identified${fhirType.capitalize()}', identifiedX);
    }

    addField('author', author);
    addField('implicated', implicated);
    addField('evidence', evidence);
    addField('detail', detail);
    addField('reference', reference);
    addField('mitigation', mitigation);
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
      'status',
      'code',
      'severity',
      'patient',
      'identifiedX',
      'author',
      'implicated',
      'evidence',
      'detail',
      'reference',
      'mitigation',
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
      case 'status':
        fields.add(status);
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'identifiedDateTime':
        if (identifiedX is FhirDateTime) {
          fields.add(identifiedX!);
        }
      case 'identifiedPeriod':
        if (identifiedX is Period) {
          fields.add(identifiedX!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'implicated':
        if (implicated != null) {
          fields.addAll(implicated!);
        }
      case 'evidence':
        if (evidence != null) {
          fields.addAll(evidence!);
        }
      case 'detail':
        if (detail != null) {
          fields.add(detail!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'mitigation':
        if (mitigation != null) {
          fields.addAll(mitigation!);
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
  DetectedIssue clone() => throw UnimplementedError();
  @override
  DetectedIssue copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ObservationStatus? status,
    CodeableConcept? code,
    DetectedIssueSeverity? severity,
    Reference? patient,
    IdentifiedXDetectedIssue? identifiedX,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    FhirUri? reference,
    List<DetectedIssueMitigation>? mitigation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DetectedIssue(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      identifiedX: identifiedX?.copyWith(
            objectPath: '$newObjectPath.identifiedX',
          ) as IdentifiedXDetectedIssue? ??
          this.identifiedX,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      implicated: implicated
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.implicated',
                ),
              )
              .toList() ??
          this.implicated,
      evidence: evidence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.evidence',
                ),
              )
              .toList() ??
          this.evidence,
      detail: detail?.copyWith(
            objectPath: '$newObjectPath.detail',
          ) ??
          this.detail,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      mitigation: mitigation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.mitigation',
                ),
              )
              .toList() ??
          this.mitigation,
    );
  }
}

/// [DetectedIssueEvidence]
/// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or
/// MeasureReport.
class DetectedIssueEvidence extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueEvidence]

  const DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DetectedIssue.evidence',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue.evidence';
    return DetectedIssueEvidence(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.code',
                  },
                ),
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.detail',
                  },
                ),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DetectedIssueEvidence]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueEvidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueEvidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueEvidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueEvidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueEvidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssueEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueEvidence';

  /// [code]
  /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to resources that constitute evidence for the detected issue such
  /// as a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
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
    addField('code', code);
    addField('detail', detail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'detail',
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
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
  DetectedIssueEvidence clone() => throw UnimplementedError();
  @override
  DetectedIssueEvidence copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DetectedIssueEvidence(
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
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }
}

/// [DetectedIssueMitigation]
/// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue
/// from manifesting. Can also reflect an observation of known mitigating
/// factors that may reduce/eliminate the need for any action.
class DetectedIssueMitigation extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueMitigation]

  const DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.author,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DetectedIssue.mitigation',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueMitigation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue.mitigation';
    return DetectedIssueMitigation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.modifierExtension',
                  },
                ),
            ),
          )
          .toList(),
      action: JsonParser.parseObject<CodeableConcept>(
        json,
        'action',
        CodeableConcept.fromJson,
        '$objectPath.action',
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
    );
  }

  /// Deserialize [DetectedIssueMitigation]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueMitigation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueMitigation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueMitigation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueMitigation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueMitigation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueMitigation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssueMitigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueMitigation';

  /// [action]
  /// Describes the action that was taken or the observation that was made
  /// that reduces/eliminates the risk associated with the identified issue.
  final CodeableConcept action;

  /// [date]
  /// Indicates when the mitigating action was documented.
  final FhirDateTime? date;

  /// [author]
  /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  final Reference? author;
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
    addField('date', date);
    addField('author', author);
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
      'date',
      'author',
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
        fields.add(action);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
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
  DetectedIssueMitigation clone() => throw UnimplementedError();
  @override
  DetectedIssueMitigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Reference? author,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DetectedIssueMitigation(
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
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
    );
  }
}
